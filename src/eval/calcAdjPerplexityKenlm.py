
import sys
import json
import math


resultFile = open(sys.argv[1])
resultFileArr = sys.argv[1].split('/')
resultFileName = resultFileArr[len(resultFileArr) - 1]
userid = sys.argv[1].split('.')[0]
results = json.load(resultFile)

numUnkTypes = float(results["NUMUNKTYPES"]) #META


i = 1
nonAdjustedPerplexity = 0.0
perplexity = 0.0 #Actually is adjustedPErplexity
sumAllSentPerplexity = 0.0
N= 0
lenRes = len(results)
while(i < len(results)):
	
	sentPerplexity = 1.0

	sent = results[str(i)]
	
	for wordInfo in sent:

		N+=1
		
		token = wordInfo['TOKEN'] #META
		isUnk = wordInfo['ISUNK'] #META

		if(rank <= len(accAt)):
			j=len(accAt)-1
			while (j >= rank):

				accAt[j] += 1
				j -= 1

		pred = float(wordInfo['TARGPRED']) #META #The prediction given to the acutal token wanted

		nonAdjustedPerplexity = nonAdjustedPerplexity + math.log(pred)
		if(isUnk == "TRUE" or token == 'UNK'):
			pred = pred/numUnkTypes
		
		perplexity = perplexity + math.log(pred)

	i+=1


perplexity = -1.0 * perplexity
nonAdjustedPerplexity = -1.0 * nonAdjustedPerplexity

perplexity = (1/float(N)) * perplexity
nonAdjustedPerplexity = (1/float(N)) * nonAdjustedPerplexity

perplexity = math.exp(perplexity)
nonAdjustedPerplexity = math.exp(nonAdjustedPerplexity)

print "Adjusted perplexity 	&	perplexity"
print  str(perplexity) + " & " + str(nonAdjustedPerplexity) + "\\\\"
 
