#!/bin/bash
source activate pytorch_test && python main.py --data ./data/reuters --epochs=20 --model LSTM --log-interval 25 > reuters-lstm.txt
source activate pytorch_test && python main.py --data ./data/reuters --epochs=20 --model GRU --log-interval 25 > reuters-gru.txt
source activate pytorch_test && python main.py --data ./data/reuters --epochs=20 --model RNN_TANH --log-interval 25 > reuters-tanh.txt
source activate pytorch_test && python main.py --data ./data/reuters --epochs=20 --model RNN_RELU --log-interval 25 > reuters-relu.txt

source activate pytorch_test && python main.py --data ./data/micmac --epochs=20 --model LSTM --log-interval 25 > micmac-lstm.txt
source activate pytorch_test && python main.py --data ./data/micmac --epochs=20 --model GRU --log-interval 25 > micmac-gru.txt
source activate pytorch_test && python main.py --data ./data/micmac --epochs=20 --model RNN_TANH --log-interval 25 > micmac-tanh.txt
source activate pytorch_test && python main.py --data ./data/micmac --epochs=20 --model RNN_RELU --log-interval 25 > micmac-relu.txt
