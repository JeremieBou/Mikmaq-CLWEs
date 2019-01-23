import os
import math
import kenlm
import sys
import json
import numpy as np
import time


myModelFile = sys.argv[1]
testFile = sys.argv[2]
vocabFile = sys.argv[3]

modelNameArr = myModelFile.split('/')
modelName = modelNameArr[len(modelNameArr)-1]

testFileArr = testFile.split('/')
testFileName = testFileArr[len(testFileArr)-1]
vocab = json.load(open(vocabFile))

if vocab.get('<unk>') == None:
	vocab['<unk>'] = 1

word2idx = {}
idx2word = {}




for v in vocab:
	word2idx[v] = len(word2idx)
	idx2word[len(idx2word)] = v

    lexicon.add_expressions(in_expressions)
def softmax(x):
    ex = np.exp(x)
    sum_ex = np.sum( np.exp(x))
    return ex/sum_ex


def probOutputs(model, sentence, vocab, word2idx, idx2word, bos = True, eos = True):

		words = sentence.split()
		#words = words + ['</s>'] #Add the end of sentence token
		state = kenlm.State()
		if bos:
			model.BeginSentenceWrite(state)
		else:
			model.NullContextWrite(state)
		out_state = kenlm.State()
		total = 0.0
		allStateScores = []

		unk_types = set()
		sentPreds = []

		for word in words:
			if(word not in vocab):
				key = '<unk>'
			else:
				key = word

			goldIndex = word2idx[key]


			stateScore = [0.0] * len(vocab)
			stateUnked = [0.0] * len(vocab)



			origState = state.__copy__()

			for w in vocab:
				#Keep track of the original state and reset it so the state represents the sate timestep for each word in the vocab that is tested
				inState = origState.__copy__()
				#Calculate the score for the current word in the vocab
				score = model.BaseFullScore(inState, str(w.encode('utf-8')), out_state)

				stateScore[word2idx[w]] = score.log_prob
				stateUnked[word2idx[w]] = score.oov

			soft = softmax(stateScore)
			sumVal = 0.0

			pred = soft[goldIndex]
			total += model.BaseScore(state, str(word), out_state)
			state = out_state
			sentPreds += [pred]
			if stateUnked[goldIndex] or word == 'unk':
				unk_types.add(word)
				print "<unk> ", math.log(pred)
			else:
				print word, " ", math.log(pred)
		return sentPreds, unk_types



model = kenlm.LanguageModel(myModelFile)
testInsts = open(testFile).readlines()
counter = 0
unk_types = set()
allSentPredInfo = {}
for sent in testInsts:
	counter += 1
	sentPreds, new_unk_types = probOutputs( model, sent, vocab, word2idx, idx2word,  bos=False) #returns an array of softmaxes for each step
	unk_types = unk_types.union(new_unk_types)
	#print(sentPreds)

print "<UNKTYPES> ", len(unk_types)
