import time
import sys

from requests import get

URL = 'http://api.panlex.org/v2/'
RATE_LIMIT = 120
REQ_LIMIT = 2000 # how many things can be returned by request
REQ_LEN_LIMIT = 400 # basically if I put an array that's bigger then this in the input I'll get a 414 error


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
            in_id: in_lang,
            out_id: out_lang
        }

        self.lexicon = {}

    def add_expression(self, expression):
        lang = self.lang_ids.get(expression['langvar'])

        if lang:
            if expression.get('trans_expr'):
                if lang == self.in_lang
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
                    self.in_lang = set(),
                    self.out_lang = set()
                }

            if lang == self.in_lang:
                self.lexicon[expr][self.in_lang].add(expression['txt'])
                self.in_count += 1
            else:
                self.lexicon[expr][self.out_lang].add(expression['txt'])
                self.out_count += 1

    def add_expressions(self, expressions):
        for expression in expression:
            self.add_expression(expression)

    def make_output(self):
        output = []
        for key, value in self.lexicon:
            if len(value[self.out_lang]) > 0:
                if len(value[self.in_lang]) > 0:
                    for in in value[self.in_lang]:
                        for out in value[self.out_lang]:
                            output.append((in, out))
                else:
                    for out in value[self.out_lang]:
                        output.append(("<UNK>", out))
        output = list(set(output))
        output.sort(key=lambda exp: exp[0]+exp[1])

        return output

    def print_output(self):
        output = self.make_output()

        for out in output:
            print('{}_{}\t\t{}_{}'.format(self.in_lang[0:3], out[0],
                                          self.out_lang[0:3], out[1]))



def rurl(req, params=None):
    #If we're reaching the rate limit, pause
    if req_counter == RATE_LIMIT - 5:
        time.sleep(65)
        req_counter == 0
    req_counter += 1

    a = get(URL + req, params=params).json()

    try:
        return a['result']
    except:
        print(a)
        return None

def get_langvar_id(lang):
    lang_var = rurl('langvar', params = {'uid': lang})
    return lang_var['id']

def get_expressions(lang):
    i = 0
    expressions = []

    while True:
        print(i)
        new_exprs = rurl('expr',
                         params={'uid': lang, 'offset': REQ_LIMIT*i})

        if len(new_exprs) == 0 or i > 125:
            break
        else:
            expressions += new_exprs

        i += 1

    return expressions

def get_ids(expressions, lang):
    ids = []
    for expression in expressions:
        ids.append(expression['id'])

    return ids, lexicon

def translate(expressions, target):
    out = []
    for i in range(0, len(expressions), REQ_LEN_LIMIT):
        eng = rurl('expr',
                   params={'uid': target,
                           "trans_expr": expressions[i:i+REQ_LIMIT]})
        out = out + eng

    return out


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
    in_lang = argv[1]
    out_lang = argv[2]

    if len(in_lang) == len(out_lang) == 7:
        lexicon = make_lexicon(in_lang, out_lang)
        lexicon.print_output()
    else
        print("""use language format XXX_000, were XXX is the alpha-3 code,
                and 000 is the language variety(use 000 if you don't know what
                the variety is)""")
