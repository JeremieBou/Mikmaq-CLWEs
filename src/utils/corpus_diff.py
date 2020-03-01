import sys



def get_corpus_stats(corpus):
    vocab = set()
    sents = 0
    tokens = 0
    for line in corpus:
        sents += 1

        words = line.split()
        for word in words:
            tokens += 1
            vocab.add(word)

    print("{} tokens, {} types, {} sentences".format(tokens, len(vocab), sents))


    return vocab

def read_corpus(path):
    lines = []

    with open(path, 'r', encoding='utf8') as f:
        for line in f:
            lines.append(line)

    return lines


if __name__ == "__main__":
    train = read_corpus(sys.argv[1])
    dev = read_corpus(sys.argv[2])
    test = read_corpus(sys.argv[3])

    total = train + dev + test

    print("train")
    train_vocab = get_corpus_stats(train)

    print("dev")
    dev_vocab = get_corpus_stats(dev)

    print("test")
    test_vocab = get_corpus_stats(test)

    print("total")
    total_vocab = get_corpus_stats(total)

    print("\n\ntest words not in train: {}".format(len(test_vocab.difference(train_vocab))))
    print("train words not in test: {}".format(len(train_vocab.difference(test_vocab))))

    print("dev words not in train: {}".format(len(dev_vocab.difference(train_vocab))))
    print("train words not in dev: {}".format(len(train_vocab.difference(dev_vocab))))
