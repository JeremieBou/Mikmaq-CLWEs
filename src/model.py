import math
import torch
import torch.nn as nn
from torch.nn import init

class RNNModel(nn.Module):
    """Container module with an encoder, a recurrent module, and a decoder."""

    def __init__(self, rnn_type, ntoken, ninp, nhid, nlayers, dropout=0.5,
                    tie_weights=False,
                    embeddings=None,
                    panlex=None,
                    clwe_method="SIMPLE",
                    vocab=None,
                    init_method=[
                        'fixed_uniform',
                        'fixed_uniform',
                        'fixed_uniform',
                        'fixed_uniform',
                        'fixed_uniform',
                        'fixed_uniform'
                    ]):
        super(RNNModel, self).__init__()
        self.drop = nn.Dropout(dropout)
        self.encoder = nn.Embedding(ntoken, ninp)
        if rnn_type in ['LSTM', 'GRU']:
            self.rnn = getattr(nn, rnn_type)(ninp, nhid, nlayers, dropout=dropout)
        else:
            try:
                nonlinearity = {'RNN_TANH': 'tanh', 'RNN_RELU': 'relu'}[rnn_type]
            except KeyError:
                raise ValueError( """An invalid option for `--model` was supplied,
                                 options are ['LSTM', 'GRU', 'RNN_TANH' or 'RNN_RELU']""")
            self.rnn = nn.RNN(ninp, nhid, nlayers, nonlinearity=nonlinearity, dropout=dropout)
        self.decoder = nn.Linear(nhid, ntoken)

        # Optionally tie weights as in:
        # "Using the Output Embedding to Improve Language Models" (Press & Wolf 2016)
        # https://arxiv.org/abs/1608.05859
        # and
        # "Tying Word Vectors and Word Classifiers: A Loss Framework for Language Modeling" (Inan et al. 2016)
        # https://arxiv.org/abs/1611.01462
        if tie_weights:
            if nhid != ninp:
                raise ValueError('When using the tied flag, nhid must be equal to emsize')
            self.decoder.weight = self.encoder.weight

        self.ninp = ninp
        self.rnn_type = rnn_type
        self.nhid = nhid
        self.nlayers = nlayers

        self.init_weights(init_hinput_weights=init_method[0],
                            init_hrecurent_weights=init_method[1],
                            init_hbinput_weights=init_method[2],
                            init_hbrecurent_weights=init_method[3],
                            init_em_weights=init_method[4],
                            init_out_weights=init_method[5])


        if embeddings and vocab:
            if panlex:
                if clwe_method == "SIMPLE":
                    print('Starting initializing clwe')
                    self.init_clwe_simple(embeddings, vocab, panlex.lexicon)
                    print('Finished initializing clwe')
                elif clwe_method == "DUONG":
                    pass
            else:
                print('Starting initializing embeddings')
                with torch.no_grad():
                    self.init_embeddings_weights(embeddings, vocab)
                print('Finished initializing embeddings')

    def init_weight(self, tensor, init_type='fixed_uniform'):
        if init_type == 'mikolov_uniform':
            val = 1/(2 * tensor.shape[0])
            init.uniform_(tensor, a=-val, b=val)
        elif init_type == 'default_uniform':
            val = 1/math.sqrt(tensor.shape[0])
            init.uniform_(tensor, a=-val, b=val)
        elif init_type == 'xavier':
            init.xavier_uniform_(tensor)
        elif init_type == 'xavier_normal':
            init.xavier_normal_(tensor)
        elif init_type == 'kaiming':
            init.kaiming_uniform_(tensor)
        elif init_type == 'kaiming_normal':
            init.kaiming_normal_(tensor)
        elif init_type == 'orthogonal':
            init.orthogonal_(tensor)
        elif init_type == 'sparse':
            init.sparse_(tensor, sparsity=0.1)
        elif init_type == "normal":
            init.normal_(tensor, 0, math.sqrt(2/self.ninp))
        elif init_type == 'zeroes':
            tensor.fill_(0)
        else:
            init.uniform_(tensor, a=-0.1, b=0.1)

    def init_weights(self, init_type='fixed_uniform',
                        init_hinput_weights=None,
                        init_hrecurent_weights=None,
                        init_hbinput_weights=None,
                        init_hbrecurent_weights=None,
                        init_em_weights=None,
                        init_out_weights=None):


        for m in self.modules():
            if type(m) in [nn.GRU, nn.LSTM, nn.RNN]:
                for name, param in m.named_parameters():
                    if 'weight_ih' in name:
                        self.init_weight(param.data, init_hinput_weights if init_hinput_weights else init_type)
                    elif 'weight_hh' in name:
                        self.init_weight(param.data, init_hrecurent_weights if init_hrecurent_weights else init_type)
                    elif 'bias_ih' in name:
                        self.init_weight(param.data, init_hbinput_weights if init_hbinput_weights else init_type)
                    elif 'bias_hh' in name:
                        self.init_weight(param.data, init_hbrecurent_weights if init_hbrecurent_weights else init_type)
            elif type(m) in [nn.Embedding]:
                self.init_weight(self.encoder.weight.data, init_em_weights if init_em_weights else init_type)
            elif type(m) in [nn.Linear]:
                self.init_weight(self.decoder.weight.data, init_out_weights if init_out_weights else init_type)
                self.decoder.bias.data.zero_()

    def init_embeddings_weights(self, model, vocab):
        for i, word in enumerate(vocab.idx2word):
            self.encoder.weight.data[i] = torch.FloatTensor(model.get_word_vector(word))

    def init_clwe_simple(self, model, vocab, lexicon):
        for english, micmac in lexicon.items():
            i = vocab.word2idx.get(micmac, -1)
            if i >= 0:
                self.encoder.weight.data[i] \
                            = torch.FloatTensor(model.get_word_vector(english))

    def forward(self, input, hidden):
        emb = self.drop(self.encoder(input))
        output, hidden = self.rnn(emb, hidden)
        output = self.drop(output)
        decoded = self.decoder(output.view(output.size(0)*output.size(1), output.size(2)))
        return decoded.view(output.size(0), output.size(1), decoded.size(1)), hidden

    def init_hidden(self, bsz):
        weight = next(self.parameters())
        if self.rnn_type == 'LSTM':
            return (weight.new_zeros(self.nlayers, bsz, self.nhid),
                    weight.new_zeros(self.nlayers, bsz, self.nhid))
        else:
            return weight.new_zeros(self.nlayers, bsz, self.nhid)
