

#Save vocab of a given file

import sys, json, os

trainVocab = sys.argv[1]
inFile = sys.argv[2]
outDir = sys.argv[3]

train_vocab = json.load(open(trainVocab))

vocab = {"<unk>": 0}
inText = open(inFile)
for sent in inText.readlines():
	for word in sent.split():
		if(word != '<s>'):
			if word not in vocab:
				if word in train_vocab:
					vocab[word] = 1
				else:
					vocab["<unk>"] += 1
			else:
				vocab[word] += 1
outPath = outDir +'-dev-Vocabweird.json'
json.dump(vocab, open(outPath, 'w'))
