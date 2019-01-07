import kenlm
import sys
import math

myModelFile = sys.argv[1]
testFile = sys.argv[2]

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
            word = "<unk>"
        print("{}  {}".format(word, prob))


print("{}  {}".format("<UNKTYPES> ", len(unk_types)))
