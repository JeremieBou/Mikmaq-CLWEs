import sys
import sqlite3

def make_lexicon(in_lang, out_lang, connection):
    query = """
        select engd.quality,
               engd.expr,
               engex.txt,
               micd.txt

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
          join (
            select *
                from expr
          ) as engex on engex.id == engd.expr
          limit 1;


    """.format(in_lang, out_lang)

    c = conn.cursor()
    output = c.execute(query)
    print(output)

    for o in output:
        print(o)



if __name__ == "__main__":
    in_lang = sys.argv[1]
    out_lang = sys.argv[2]

    conn = sqlite3.connect(database)

    if len(in_lang) == len(out_lang) == 7:
        lexicon = make_lexicon(in_lang, out_lang, conn)
        #lexicon.print_output()
    else:
        print("""use language format XXX-000, were XXX is the alpha-3 code,
                and 000 is the language variety(use 000 if you don't know what
                the variety is)""")

    conn.close()
