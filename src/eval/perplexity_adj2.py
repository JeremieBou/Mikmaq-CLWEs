import math, sys

UNK_TOKENS = ["<unk>", "UNK"]


def perplexity_calc(infile):
    lp_sum = 0
    num_tokens = 0
    num_unks = 0
    unk_types = 0

    for line in infile:
        token, logprob = line.split()
        logprob = float(logprob)
        if token in ['</s>', "<eos>"]:
            continue
            
        if token == "<UNKTYPES>":
            unk_types = logprob
            continue

        #Get log prob sum
        lp_sum += logprob

        num_tokens += 1

        if token in UNK_TOKENS:
            num_unks += 1

    perplexity = (-1/num_tokens) * lp_sum
    perplexity = math.exp(perplexity)

    if unk_types > 0:
        adj_perplexity = (-1/num_tokens) \
                        * (lp_sum - num_unks * math.log(unk_types))
        print(lp_sum)
        print(lp_sum * (-1/num_tokens))
        print(num_unks * math.log(unk_types))
        print(adj_perplexity)
        adj_perplexity = math.exp(adj_perplexity)
        print(num_unks)
        print(math.log(unk_types))
    else:
        adj_perplexity = perplexity

    print("Perplexity: {}".format(perplexity))
    print("Adjusted Perplexity: {}".format(adj_perplexity))

if __name__ == "__main__":
    perplexity_calc(open(sys.argv[1]))
