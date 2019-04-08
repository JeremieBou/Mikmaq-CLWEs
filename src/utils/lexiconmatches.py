import sys

import numpy as np
from data import Corpus, Panlex


if __name__ == "__main__":
    corpus = Corpus(sys.argv[1])
    lexicon = Panlex(sys.argv[2], acceptable_dist=int(sys.argv[3]), panlex_swap_gk=True)
    res = []

    matches = 0
    matches_big = 0
    big = 0
    examples = 0

    for word in corpus.dictionary.word2idx.keys():
        inserted = False
        if corpus.dictionary.word2freq[word] >= 5:
            big += 1

        eng = lexicon.get(target=word)
        if eng:
            res.append((corpus.dictionary.word2freq[word], word, eng))
            matches += 1
            examples += corpus.dictionary.word2freq[word]
            if corpus.dictionary.word2freq[word] >= 5:
                matches_big += 1
            inserted = True

        if not inserted:
            res.append((corpus.dictionary.word2freq[word], word, "N/A"))

    res = sorted(res, key=lambda tup: tup[0])
    missing_ex = 0
    num = 0
    for i in res:
        if i[2] == 'N/A' and i[0] >= 10:
            missing_ex += i[0]
            num += 1
        print(i)

    print(matches)
    print(matches_big)
    print(big)
    print(examples)
    print(missing_ex)
    print(num)
