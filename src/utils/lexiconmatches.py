import sys

import numpy as np
from data import Corpus, Panlex


if __name__ == "__main__":
    corpus = Corpus(sys.argv[1])
    lexicon = Panlex(sys.argv[2])
    res = []

    matches = 0
    matches_big = 0
    big = 0
    examples = 0

    for word in corpus.dictionary.word2idx.keys():
        inserted = False
        if corpus.dictionary.word2freq[word] >= 5:
            big += 1
        for eng, mic in lexicon.lexicon.items():
            if word == mic:
                res.append((corpus.dictionary.word2freq[word], word, eng))
                matches += 1
                examples += corpus.dictionary.word2freq[word]
                if corpus.dictionary.word2freq[word] >= 5:
                    matches_big += 1
                inserted = True

        if not inserted:
            res.append((corpus.dictionary.word2freq[word], word, "N/A"))

    res = sorted(res, key=lambda tup: tup[0])
    for i in res:
        print(i)

    print(matches)
    print(matches_big)
    print(big)
    print(examples)
