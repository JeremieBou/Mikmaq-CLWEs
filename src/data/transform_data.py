import sys
import os

if __name__ == "__main__":
    input = sys.argv[1]
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
                sent.append(token)
                sents.append(sent)
                sent = []

    for sent in sents:
        print("".join(sent))
