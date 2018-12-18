import os
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

word2idx = {}
idx2word = {}
for v in vocab:
	word2idx[v] = len(word2idx)
	idx2word[len(idx2word)] = v

def softmax(x):
    ex = np.exp(x)
    sum_ex = np.sum( np.exp(x))
    return ex/sum_ex


def probOutputs(model, sentence, vocab, word2idx, idx2word, bos = True, eos = True):

		words = sentence.split()
		words = words + ['</s>'] #Add the end of sentence token
		state = kenlm.State()
		if bos:
			model.BeginSentenceWrite(state)
		else:
			model.NullContextWrite(state)
		out_state = kenlm.State()
		total = 0.0
		allStateScores = []

		sentPreds = []
		for word in words:
			if(word not in vocab):
				print("...")
				word = '<unk>'

			goldIndex = word2idx[word]


			stateScore = [0.0] * len(vocab)


			origState = state.__copy__()

			for w in vocab:
				#Keep track of the original state and reset it so the state represents the sate timestep for each word in the vocab that is tested
				inState = origState.__copy__()
				#Calculate the score for the current word in the vocab
				wScore = model.BaseScore(inState, str(w.encode('utf-8')), out_state)

				stateScore[word2idx[w]] = wScore

			soft = softmax(stateScore)
			sumVal = 0.0

			pred = soft[goldIndex]
			total += model.BaseScore(state, str(word), out_state)
			state = out_state
			sentPreds += [pred]
		return sentPreds


model = kenlm.LanguageModel(myModelFile)
testInsts = open(testFile).readlines()
counter = 0
allSentPredInfo = {}
for sent in testInsts:
	counter += 1
	sentPreds = probOutputs( model, sent, vocab, word2idx, idx2word) #returns an array of softmaxes for each step
	print sentPreds
