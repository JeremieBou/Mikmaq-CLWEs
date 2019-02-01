import kenlm
import sys
import math

myModelFile = sys.argv[1]
testFile = sys.argv[2]
try:
    do_adj = sys.argv[3] == 'adj'
except IndexError:
    do_adj = False

model = kenlm.LanguageModel(myModelFile)
tests = open(testFile).readlines()

unk_types = set()

for sent in tests:
    sent = sent.strip()
    sent_split = sent.split(' ')
    sent_split.append('</s>')

    for i, score in enumerate(model.full_scores(sent, eos=False)):
        prob = math.log(10 ** score[0])
        word = sent_split[i]

        if score[2]:
            unk_types.add(sent_split[i])
            if not do_adj:
                print("{}  {}   <UNK>".format(word, prob))
        else:
            if not do_adj:
                print("{}  {}".format(word, prob))
if do_adj:
    for sent in tests:
        sent = sent.strip()
        sent_split = sent.split(' ')
        sent_split.append('</s>')

        for i, score in enumerate(model.full_scores(sent, eos=False)):
            if score[2]:
                prob = math.log(10 ** score[0]/len(unk_types))
            else:
                prob = math.log(10 ** score[0])
            word = sent_split[i]

            print("{}  {}".format(word, prob))
