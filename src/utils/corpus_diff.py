import sys

def corpus_set(path):
    corpus = set()
    d = {}
    a = 0
    with open(path, 'r', encoding="utf8") as f:
        for line in f:
            words = line.split()
            for word in words:
                if word not in d:
                    a += 1
                    d[word] = 1
                corpus.add(word)


    print(a)

    return corpus


if __name__ == "__main__":
    a = corpus_set(sys.argv[1])
    b = corpus_set(sys.argv[2])
    print(len(a))

    print(len(b))
    print(len(b - a))
