import math
import argparse
import torch
import torch.nn as nn
from utils import data
import model
import numpy as np

parser = argparse.ArgumentParser(description='PyTorch Wikitext-2 RNN/LSTM Language Model')
parser.add_argument('--data', type=str, default='./data/wikitext-2',
                    help='location of the data corpus')

parser.add_argument('--model', type=str, default='model.pt',
                    help='path to model')


parser.add_argument('--cuda', action='store_true',
                    help='use CUDA')

args = parser.parse_args()


device = torch.device("cuda" if args.cuda else "cpu")

with open(args.model, 'rb') as f:
    model = torch.load(f)
    # after load the rnn params are not a continuous chunk of memory
    # this makes them a continuous chunk, and will speed up forward pass
    model.rnn.flatten_parameters()


model.eval()


def batchify(data, bsz):
    # Work out how cleanly we can divide the dataset into bsz parts.
    nbatch = data.size(0) // bsz
    # Trim off any extra elements that wouldn't cleanly fit (remainders).
    data = data.narrow(0, 0, nbatch * bsz)
    # Evenly divide the data across the bsz batches.
    data = data.view(bsz, -1).t().contiguous()
    return data.to(device)


def get_batch(source, i):
    seq_len = min(35, len(source) - 1 - i)
    data = source[i:i+seq_len]
    target = source[i+1:i+1+seq_len]
    return data, target

corpus = data.Corpus(args.data)

test_data = batchify(corpus.test, 10)
ntokens = len(corpus.dictionary)

def map_to_dict(x):
    return corpus.dictionary.idx2word[x]

criterion = nn.CrossEntropyLoss()
with torch.no_grad():
    hidden = model.init_hidden(10)

    for i in range(0, test_data.size(0) - 1, 35):#sequence length 35
        data, targets = get_batch(test_data, i)
        output, hidden = model(data, hidden)

        targets_t = targets.transpose(0, -1).contiguous()
        output_t = output.transpose(0, 1).contiguous()

        targets_flat = targets_t.view(-1)
        output_flat = output_t.view(-1, ntokens)


        base = 0

        for i, word in enumerate(targets_flat):
            probs = nn.Softmax()(output_flat[i])
            print("{} {}".format(map_to_dict(word), math.log(probs[word])))
