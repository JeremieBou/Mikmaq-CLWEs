import time
import sys
import json
import sqlite3

from requests import get, post

URL = 'http://api.panlex.org/v2/'
RATE_LIMIT = 100
REQ_LIMIT = 2000 # how many things can be returned by request
REQ_LEN_LIMIT = 400 # basically if I put an array that's bigger then this in the input I'll get a 414 error
OFFSET_LIMIT = 125000

req_counter = 0

class Lexicon():
    def __init__(self, in_lang, out_lang):
        self.in_lang = in_lang
        self.out_lang = out_lang

        self.in_id = get_langvar_id(in_lang)
        self.out_id = get_langvar_id(out_lang)

        self.in_count = 0
        self.out_count = 0

        self.lang_ids = {
            self.in_id: self.in_lang,
            self.out_id: self.out_lang
        }

        self.lexicon = {}

    def add_db_expression(self, meaning, in_expr, out_expr):
        if not self.lexicon.get(meaning):
            self.lexicon[meaning] = {
                self.in_lang: set(),
                self.out_lang: set()
            }

        self.lexicon[meaning][self.in_lang].add(in_expr)
        self.lexicon[meaning][self.out_lang].add(out_expr)

        self.in_count += 1
        self.out_count += 1

    def add_expression(self, expression):
        lang = self.lang_ids.get(expression['langvar'])

        if lang:
            if expression.get('trans_expr'):
                if lang == self.in_lang:
                    expr = expression['trans_expr']
                else:
                    expr = expression['id']
            else:
                if lang == self.out_lang:
                    expr = expression['id']
                else:
                    return

            if not self.lexicon.get(expr):
                self.lexicon[expr] = {
                    self.in_lang: set(),
                    self.out_lang: set()
                }

            if lang == self.in_lang:
                self.lexicon[expr][self.in_lang].add(expression['txt'])
                self.in_count += 1
            else:
                self.lexicon[expr][self.out_lang].add(expression['txt'])
                self.out_count += 1

    def add_expressions(self, expressions):
        for expression in expressions:
            self.add_expression(expression)

    def make_output(self):
        output = []
        for key, value in self.lexicon.items():
            if len(value[self.out_lang]) > 0:
                if len(value[self.in_lang]) > 0:
                    for inp in value[self.in_lang]:
                        for out in value[self.out_lang]:
                            inp = inp.strip().replace(' ', '_')
                            out = inp.strip().replace(' ', '_')
                            output.append((inp, out))

        output = list(set(output))
        output.sort(key=lambda exp: exp[0]+exp[1])

        return output



    def print_output(self):
        print("???")
        output = self.make_output()
        print("???")
        for out in output:
            print('{}_{}\t\t{}_{}'.format(self.in_lang[0:3], out[0],
                                          self.out_lang[0:3], out[1]))


def rurl(req, params=None, long=False):
    time.sleep(0.5)
    if long:
        a = post(URL + req, data=json.dumps(params))
    else:
        a = get(URL + req, params=params)

    if a.status_code != 200:
        print(a)
        print(a.text)
        return

    a = a.json()

    try:
        return a['result']
    except:
        print(a)
        return None

def get_langvar_id(lang):
    lang_var = rurl('langvar', params = {'uid': lang})
    return lang_var[0]['id']

def get_expressions(lang):
    i = 0
    expressions = []

    while True:
        new_exprs = rurl('expr',
                         params={'uid': lang, 'offset': REQ_LIMIT*i})

        i += 1
        if len(new_exprs) == 0 or REQ_LIMIT*i > OFFSET_LIMIT or i > 10:
            break
        else:
            expressions += new_exprs


    return expressions

def get_ids(expressions, lang):
    ids = []
    for expression in expressions:
        ids.append(expression['id'])

    return ids

def translate(ids, target):
    out = []
    for i in range(0, len(ids), REQ_LIMIT):
        resp = rurl('expr',
                   params={'uid': target,
                           'trans_expr': ids[i:i+REQ_LIMIT]},
                    long=True)

        out = out + resp

    return out


def build_query(in_lang, out_lang):
    query = """
        select quality,
               d2.txt,
               e2.txt,
               d2.meaning
            from expr as e2
            join (
                select engd.quality,
                       engd.expr,
                       micd.txt,
                       engd.meaning

                  from denotationx as engd
                  join (
                    select *
                      from langvar
                      where uid == '{}'
                  ) as eng on engd.langvar == eng.id
                  join (
                    select d.meaning,
                           ex.txt
                      from denotationx as d
                      join (
                        select *
                          from expr as e
                          join (
                            select *
                              from langvar
                              where uid == '{}'
                          ) as l on l.id == e.langvar
                      ) as ex on ex.id == d.expr
                  ) as micd on micd.meaning == engd.meaning
            ) as d2 on d2.expr == e2.id;


    """.format(in_lang, out_lang)

    return query

def make_db_lexicon(in_lang, out_lang, connection):
    lexicon = Lexicon(in_lang, out_lang)

    c = connection.cursor()
    output = c.execute(build_query(in_lang, out_lang))
    print('???')
    print(len(output.fetchall()))
    for o in output:
        lexicon.add_db_expression(o[3], o[2], o[1])

    print("???")
    return lexicon

def make_lexicon(in_lang, out_lang):
    lexicon = Lexicon(in_lang, out_lang)
    in_expressions = get_expressions(in_lang)
    out_expressions = get_expressions(out_lang)
    lexicon.add_expressions(in_expressions)
    lexicon.add_expressions(out_expressions)
    in_ids = get_ids(in_expressions, in_lang)
    out_ids = get_ids(out_expressions, out_lang)
    in_to_out = translate(in_ids, out_lang)
    out_to_in = translate(out_ids, in_lang)
    lexicon.add_expressions(in_to_out)
    lexicon.add_expressions(out_to_in)

    return lexicon


if __name__ == "__main__":
    in_lang = sys.argv[1]
    out_lang = sys.argv[2]

    try:
        database = sys.argv[3]
    except:
        database = None


    if database:
        conn = sqlite3.connect(database)
        lexicon = make_db_lexicon(in_lang, out_lang, conn)
        lexicon.print_output()
    else:
        print("""use language format XXX-000, were XXX is the alpha-3 code,
                and 000 is the language variety(use 000 if you don't know what
                the variety is)""")
