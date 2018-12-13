import argparse
import torch
import data


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
    target = source[i+1:i+1+seq_len].view(-1)
    return data, target

corpus = data.Corpus(args.data)
test_data = batchify(corpus.test, 10)


ntokens = len(corpus.dictionary)

with torch.no_grad():
    hidden = model.init_hidden(10)

    for i in range(0, test_data.size(0) - 1, 35):#sequence length 35
        data, targets = get_batch(test_data, i)
        output, hidden = model(data, hidden)
        output_flat = output.view(-1, ntokens)
        print(data)
        print(output_flat)
