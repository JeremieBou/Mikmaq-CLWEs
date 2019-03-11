import sys
import numpy as np
from data import Corpus


if __name__ == "__main__":
    corpus = Corpus(sys.argv[1])

    print("Train")
    print(len(corpus.train))
    print(corpus.train_types)
    print(corpus.train_sents)

    print("\nDev")
    print(len(corpus.valid))
    print(corpus.valid_types)
    print(corpus.valid_sents)

    print("\nTest")
    print(len(corpus.test))
    print(corpus.test_types)
    print(corpus.test_sents)

    print("\nTotal")
    print(len(corpus.train) +\
          len(corpus.valid) +\
          len(corpus.test))
    print(corpus.train_types +\
          corpus.valid_types +\
          corpus.test_types)
    print(corpus.train_sents +\
          corpus.valid_sents +\
          corpus.test_sents)
