# Cross-Lingual Word Embeddings for Mi'kmaq Language Modelling

In this research we explore language models for Mi'kmaq. The goals were to establish a good benchmark for Mi'kmaq language models and to explore the use of Cross-Lingual Word Embeddings (CLWEs). The best perfoming model that we explored, is a skip-gram initialized GRU RNN, and the best CLWE model, which wasn't as good as the skip-gram model, was a model with directly transfered embeddings from a rich resource language.

The research and code was originally done and developed for my honours thesis under the supervision of Dr. Cook. 

The code was originally forked from the [Pytorch word-level language model example](https://github.com/pytorch/examples/tree/master/word_language_model)


Lead researcher: Jeremie Boudreau (@JeremieBou) - contact me concerning the code in the repository

Other researchers: Akankshya Patra, Paul Cook (@cpaulcook)

## File Structure

**Instructions on how to make the data and models folders are in the following sections**

```
.
+-- data
+-- models
+-- notebooks
|   +-- kenlm
|   +-- old
|   +-- rnns
+-- src
|   +-- data - scripts to process the data
|   +-- eval - scripts to perform evaluation
|   +-- utils - functions used by the models or to generate various numbers in the paper
|   +-- eval_model.py
|   +-- getVocabTest.py
|   +-- main.py - main file for training the model
|   +-- model.py - pytorch RNN models for all the research
+-- tools
|   +-- fasttext - a compiled version of fasttext
|   +-- kenlm - a compiled version of kenlm
|   +-- XlingualEmb - a compiled version of XlingualEmb (Duong et al. clwes)
|   +-- wikifil.pl
+-- wikiextractor
|   +-- 2007-10-29-why-every-programmer-should-play-nethack.textile
|   +-- 2009-04-26-barcamp-boston-4-roundup.textile
+-- .gitignore
+-- README.md
+-- requirements.txdt
+-- wikifil.pl
```

## Set up

### Environment
I did everything using python 3.7 in a conda environment

Assuming both of those are installed, run this command to create the environment

```
conda create -n clwes python=3.7 anaconda
```

Install all pip packages

```
pip intall -r requements.txt
```

FastText, Kenlm, and XlingualEmb are all compiled to work on my machine, so you might have to re-compile them. I'm using Python 3.7 and Ubuntu 18.04 without any changes to the c/c++ compilers, so if your os matches that, then you might be able to use the ones included in /tools.

**Important**: do not use the python FastText package installed from pip. That is different than the official FaceBook one from the FastText repository.

To build FastText and install the python package, follow the instructions in [this repository](https://github.com/facebookresearch/fastText). This is needed to make FastText embedding and to run the models file

To compile kenlm, follow the instructions in [this repository](https://github.com/kpu/kenlm). It's a bit finiky, so you might have to double check your c++ compiler install and stuff like that (e.g. you might have to update it or install extra libraries). This is needed to make n-gram KLM baselines

To make Duong et al. style CLWEs you need the XlingualEmb package, compile and build [this repository](https://github.com/longdt219/XlingualEmb).

### Data

Make a folder in the root project called "data",  then make "data/raw/micmac". Put the raw Mi'kmaq data files in here. There should be a dev.txt, test.txt, and train.txt. They have the following shape:

- 1 token per line
- Includes <s>, </s>, and punctuations
- No <unk>

Then make "data/transformed/micmac" and run the following Python on each datafile to clean the data for the PyTorch model:

```
python src/data/transform_data.py data/raw/micmac/train.txt > data/transformed/micmac/train.txt
python src/data/transform_data.py data/raw/micmac/dev.txt > data/transformed/micmac/valid.txt
python src/data/transform_data.py data/raw/micmac/test.txt > data/transformed/micmac/test.txt
```

**note:** the file name change for dev.txt

#### Lexicon Data
Lexicons are used to make CLWEs

TODO: fix the script that generates it. Contact me if you need the file.

#### Duong et al. Data
TODO

```
wget https://dumps.wikimedia.org/enwiki/latest/enwiki-latest-pages-articles.xml.bz2
```




## Models
This section assumes you put your compiled fasttext, kenlm, and XlingualEmb

I put everything in the /models folder with the following structure:

```
.
+-- embeddings
|   +-- FastText
|   +-- Duong
|   +-- English
+-- kenlm
+-- rnns
|   +-- base_models
|   +-- init_models
|   +-- ft_models
|   +-- clwe_models
```

### RNN Parameters
/src/main.py is the starting point for any rnn lm training. Here are the command line arguments for that:

To see what the parameters are, just run

```
python src/main.py --help
```

### Word Embeddings

#### FastText

The model code will automatically generate these, so I won't go in to many details. Refer to the FastText documentation for mode details.

Train Skipgram embeddings with size 300 and sub-word information

```
./tools/fasttext/fasttext skipgram -input data/transformed/micmac/train.txt -output models/embeddings/FastText/skipgram300 -dim 300
```

Train CBOW embeddings with size 300 and sub-word information

```
./tools/fasttext/fasttext cbow -input data/transformed/micmac/train.txt -output models/embeddings/FastText/skipgram300 -dim 300
```

Other userful paramers:
- *thread* set the number of threads used (12 by default)
- *epoch* how many times it goes over the whole data (5 by default) 
  + I didn't play with this, but since we're in a low resource context, it wouldn't be hard to do more since it only takes a few seconds to train
- *maxn* the maximum size of the character n-grams used (default is 6). 0 means no character n-grams

#### English word embeddings

You can download sized 300 embeddings trained on English (and 293 other languages) wikipedia [here](https://fasttext.cc/docs/en/pretrained-vectors.html)

If you desire a different size or paramaters, the instructions on how to create these English embeddings are [here](https://fasttext.cc/docs/en/unsupervised-tutorial.html). This takes a long time, and if you can easily get access to a machine with a high number of CPUs do it (e.g. aws ec2 spot instances). Otherwise, you might have to wait overnight.

#### Duong Embeddings
A package to train CWLEs as proposed by Duong et al. is available [here](https://github.com/longdt219/XlingualEmb). I already have a version built into /tools/XlingualEmb.

To generate Duong CLWEs you need:
- A source-target lexicon (e.g. Enligsh - Mi'kmaq). With one entry per line. Every word is preceded by the language and an underscore (for example: banana -> en_banana).
- A shuffled sampled of each language combined in the same file (some lines are in each language, but totally random order). Every word is preceded by the language and an underscore (for example: banana -> en_banana).

For my exploration, I tested two sizes of English data, one file with 200k lines and one with 5M lines. The following will generate both embedding models. We will be using the output .emb file. Quick note: this seems very resource intensive and not very "smart", so a lot of times it was hard to do anything else on the computer while it ran. Just run it over night, and it'll be ok (it's not extremly slow, but not fast either since the first needs to go through 5M lines).


```
./xlingemb -train data/duong_data/en5mil_duong.txt -output models/embeddings/Duong/en.mi.5mil.word.emb -size 300 -window 48 -iter 15 
-negative 25 -sample 0.0001 -alpha 0.025 -cbow 1 -threads 5 -dict data/lexicon/eng-mic.txt 
-outputn models/embeddings/Duong/en.mi.5mil.context.emb -reg 0.01
```

```
./xlingemb -train data/duong_data/en200k_duong.txt -output models/embeddings/Duong/en.mi.200k.word.emb -size 300 -window 48 -iter 15 
-negative 25 -sample 0.0001 -alpha 0.025 -cbow 1 -threads 5 -dict data/lexicon/eng-mic.txt 
-outputn models/embeddings/Duong/en.mi.200k.context.emb -reg 0.01
```

### Language Models
This section will be oranized in the order of the paper and will only include instructions to reproduce the best models in each sections. (A list of parameters will be included, which will help reproduce the rest).

#### KenLM

#### Base RNNs

**Best GRU**
```
!command python src/main.py \
    --data data/transformed/micmac \
    --model GRU \
    --epochs=25 \
    --log-interval 25 \
    --lr 5 \
    --nlayers 1 \
    --tied \
    --emsize 300 \
    --nhid 300 \
    --dropout 0.5\
    --save models/rnns/base_models/gru_300_05.pt
```

**Best LSTM**
```
!command python src/main.py \
    --data data/transformed/micmac \
    --model LSTM \
    --epochs=25 \
    --log-interval 25 \
    --lr 5 \
    --nlayers 1 \
    --tied \
    --emsize 300 \
    --nhid 300 \
    --dropout 0.5 \
    --save models/rnns/base_models/LSTM_300_05.pt
```

#### Init Models

**Best base gru + Normal initialization**
```
!command python src/main.py \
    --data data/transformed/micmac \
    --model GRU \
    --epochs=25 \
    --log-interval 25 \
    --lr 5 \
    --nlayers 1 \
    --tied \
    --emsize 300 \
    --nhid 300 \
    --dropout 0.5\
    --hin_weights normal \
    --hr_weights normal \
    --em_weights normal \
    --out_weights normal \
    --save models/rnns/init_models/gru_normnom.pt
```

#### FastText
**Best GRU with skip gram initialization**
The saved model can either be pre-trained with the above instructions, or if it is not pre-tained, the script will do it.

```
python src/main.py \
    --data data/transformed/micmac \
    --model GRU \
    --epochs 25 \
    --log-interval 25 \
    --lr 5 \
    --nlayers 1 \
    --tied \
    --emsize 300 \
    --nhid 300 \
    --dropout 0.5\
    --use_fasttext\
    --embedding_model SKIPGRAM \
    --fasttext_save models/embeddings/FastText/skipgram300 \
    --save models/rnns/ft_models/GRU_skip300.pt
```

#### Direct CLWE
*I need to put instructions for how to make Lexicons with PanLex first. The issue is that the script currently doesn't work, so I'll need to fix that first.*

**Direct**
```
!command python src/main.py \
    --data data/transformed/micmac \
    --model GRU \
    --epochs=35 \
    --log-interval 25 \
    --tied \
    --nlayers 1 \
    --lr 5 \
    --dropout 0.5 \
    --hin_weights normal \
    --hr_weights normal \
    --em_weights normal \
    --out_weights normal \
    --emsize 300 \
    --nhid 300 \
    --use_clwe \
    --clwe_method SIMPLE \
    --panlex_loc data/lexicon/eng-mic3.txt \
    --clwe_save models/embeddings/English/wiki.en \
    --save models/rnns/clwe_models/gru_300_clwe.pt
```

**Rand 1**
```
!command python src/main.py \
    --data data/transformed/micmac \
    --model GRU \
    --epochs=35 \
    --log-interval 25 \
    --tied \
    --nlayers 1 \
    --lr 5 \
    --dropout 0.5 \
    --hin_weights normal \
    --hr_weights normal \
    --em_weights normal \
    --out_weights normal \
    --emsize 300 \
    --nhid 300 \
    --use_clwe \
    --clwe_method RAND \
    --panlex_loc data/lexicon/eng-mic3.txt \
    --clwe_save models/embeddings/English/wiki.en \
    --save models/rnns/clwe_models/gru_300_clwe_RAND.pt
 ```

**Rand 2**

```
!command python src/main.py \
    --data data/transformed/micmac \
    --model GRU \
    --epochs=35 \
    --log-interval 25 \
    --tied \
    --nlayers 1 \
    --lr 5 \
    --dropout 0.5 \
    --hin_weights normal \
    --hr_weights normal \
    --em_weights normal \
    --out_weights normal \
    --emsize 300 \
    --nhid 300 \
    --use_clwe \
    --clwe_method RAND_TRANS \
    --panlex_loc data/lexicon/eng-mic.txt \
    --clwe_save models/embeddings/English/wiki.en \
    --save models/rnns/clwe_models/gru_300_clwe_RAND_TRANS.pt

```



#### Duong CLWE CLWE
TODO

## Evaluation

## Extra Analysis










