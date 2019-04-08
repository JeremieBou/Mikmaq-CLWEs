import re
import os
import torch

from editdistance import eval

class Dictionary(object):
    def __init__(self):
        self.word2idx = {}
        self.idx2word = []
        self.word2freq = {}

    def add_word(self, word):
        if word not in self.word2idx:
            self.idx2word.append(word)
            self.word2idx[word] = len(self.idx2word) - 1
            self.word2freq[word] = 1
            return 1
        else:
            self.word2freq[word] = self.word2freq[word] + 1
            return 0

    def __len__(self):
        return len(self.idx2word)


class Corpus(object):
    def __init__(self, path):
        self.dictionary = Dictionary()
        self.train, self.train_sents, self.train_types = self.tokenize(os.path.join(path, 'train.txt'))
        self.valid, self.valid_sents, self.valid_types = self.tokenize(os.path.join(path, 'valid.txt'))
        self.test, self.test_sents, self.test_types = self.tokenize(os.path.join(path, 'test.txt'))

    def tokenize(self, path):
        """Tokenizes a text file."""
        assert os.path.exists(path)
        sentences = 0
        types = 0
        # Add words to the dictionary
        with open(path, 'r', encoding="utf8") as f:
            tokens = 0
            for line in f:
                sentences += 1;
                words = line.split()
                tokens += len(words)
                for word in words:
                    types += self.dictionary.add_word(word)

        # Tokenize file content
        with open(path, 'r', encoding="utf8") as f:
            ids = torch.LongTensor(tokens)
            token = 0
            for line in f:
                words = line.split()
                for word in words:
                    ids[token] = self.dictionary.word2idx[word]
                    token += 1

        return ids, sentences, types

class Panlex(object):
    def __init__(self,
                 lexicon_location,
                 acceptable_dist=0,
                 panlex_swap_gk=False):
        self.panlex_swap_gk = panlex_swap_gk
        self.lexicon, self.inverted_lexicon = self.read_lexicon(lexicon_location)

        self.acceptable_dist = acceptable_dist

    def swap_gk(self, word):
        return word.replace('g', 'k').replace("'", "")

    def get(self, source=None, target=None):
        if target:
            if self.panlex_swap_gk:
                target = self.swap_gk(target)

            closest = self.inverted_lexicon.get(target)
            closest_dist = -1

            if not closest and self.acceptable_dist > 0:
                for s, t in self.lexicon.items():
                    distance = eval(target, t)
                    if closest_dist < 0 or distance < closest_dist:
                        closest = s
                        closest_dist = distance

            if closest_dist <= self.acceptable_dist:
                return closest
            else:
                return None
        elif source:
            return self.lexicon.get(source)
        else:
            return None

    def read_lexicon(self, path):
        lexicon = {}
        inverted_lexicon = {}

        with open(path, 'r', encoding="utf8") as f:
            for line in f:
                # match duong's lexicon format, group 1 is feeder lang
                # and group 2 is target lang
                words = re.search('[a-z]{2}_(.+)\t[a-z]{2}_(.+)', line)
                source, target = words.group(1), words.group(2)
                if self.panlex_swap_gk:
                    target = self.swap_gk(target)

                if source != '<UNK>' and  target != '<UNK>':
                    lexicon[source] = target
                    inverted_lexicon[target] = source


        return lexicon, inverted_lexicon
