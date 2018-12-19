import sys
import os

if __name__ == "__main__":
    input = sys.argv[1]

    if sys.argv[2] and sys.argv[2] == 'no_s':
        no_s = True
    else:
        no_s = False
    sents = []
    with open(input) as in_file:
        sent = []

        for token in in_file:
            token = token.strip().lower()

            token = token.replace('’', '\'').replace('‘', '\'')\
                         .replace('“','"').replace('”','"')\
                         .replace('–', '-')

            if token and token not in ['<s>', '</s>']:
                sent.append(token + ' ')

            if token == '</s>':
                if not no_s:
                    sent.append(token)
                sents.append(sent)
                sent = []

    for sent in sents:
        print("".join(sent))
