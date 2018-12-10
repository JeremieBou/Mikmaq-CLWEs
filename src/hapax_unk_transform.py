import sys
import os

vocab = {}

if __name__ == "__main__":
    input = sys.argv[1]
    out = []

    tokens = 0
    unks = 0

    with open(input) as in_file:
        for token in in_file:
            token = token.strip().lower()

            if token and token not in ['<s>', '</s>']:
                vocab[token] = vocab.get(token, 0) + 1

    with open(input) as in_file:
        for token in in_file:
            if token and token not in ['<s>', '</s>']:                
                token = token.strip().lower()
                tokens += 1
                if vocab.get(token, 0) > 1:
                    out.append(token)
                else:
                    unks += 1
                    out.append("<UNK>")

    print("{} unks/{} tokens".format(unks, tokens))
    for token in out:
        print(token)
