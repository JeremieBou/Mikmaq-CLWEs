import sys
import os

if __name__ == "__main__":
    input = sys.argv[1]
    sents = []
    with open(input) as in_file:
        sent = []

        for token in in_file:
            token = token.strip().lower()

            if token and token not in ['<s>', '</s>']:
                sent.append(token + ' ')

            if token == '</s>':
                sents.append(sent)
                sent = []

    for sent in sents:
        print("".join(sent))
