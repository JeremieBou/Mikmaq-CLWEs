import re
import os
import torch

class Dictionary(object):
    def __init__(self):
        self.word2idx = {}
        self.idx2word = []

    def add_word(self, word):
        if word not in self.word2idx:
            self.idx2word.append(word)
            self.word2idx[word] = len(self.idx2word) - 1
        return self.word2idx[word]

    def __len__(self):
        return len(self.idx2word)


class Corpus(object):
    def __init__(self, path):
        self.dictionary = Dictionary()
        self.train = self.tokenize(os.path.join(path, 'train.txt'))
        self.valid = self.tokenize(os.path.join(path, 'valid.txt'))
        self.test = self.tokenize(os.path.join(path, 'test.txt'))

    def tokenize(self, path):
        """Tokenizes a text file."""
        assert os.path.exists(path)
        # Add words to the dictionary
        with open(path, 'r', encoding="utf8") as f:
            tokens = 0
            for line in f:
                words = line.split()
                tokens += len(words)
                for word in words:
                    self.dictionary.add_word(word)

        # Tokenize file content
        with open(path, 'r', encoding="utf8") as f:
            ids = torch.LongTensor(tokens)
            token = 0
            for line in f:
                words = line.split()
                for word in words:
                    ids[token] = self.dictionary.word2idx[word]
                    token += 1

        return ids

class Panlex(object):
    def __init__(self, lexicon_location):
        self.lexicon = self.read_lexicon(lexicon_location)

    def read_lexicon(self, path):
        lexicon = {}

        with open(path, 'r', encoding="utf8") as f:
            for line in f:
                # match duong's lexicon format, group 1 is feeder lang
                # and group 2 is target lang
                words = re.search('[a-z]{3}_(.+)\t\t[a-z]{3}_(.+)', line)
                if words.group(1) != '<UNK>' and words.group(2) != '<UNK>':
                    lexicon[words.group(1)] = words.group(2)

        return lexicon
