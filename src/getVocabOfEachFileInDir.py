

#Save vocab of a given file

import sys, json, os

inDir = sys.argv[1]
outDir = sys.argv[2]


for f in os.listdir(inDir):
	vocab = {}
	inText = open(inDir+f)
	for sent in inText.readlines():
		for word in sent.split():
			if(word != '<s>'):
				if word not in vocab:
					vocab[word] = 1
				else:
					vocab[word] += 1
	outPath = outDir+f+'-Vocab.json'
	json.dump(vocab, open(outPath, 'w'))

