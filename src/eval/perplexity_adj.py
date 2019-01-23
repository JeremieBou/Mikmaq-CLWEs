import math, sys

def perplexity_calc(infile):
    lp_sum = 0
    num_tokens = 0
    num_unks = 0


    unk_types = set()


    for line in infile:
        split_line = line.split()
        token = split_line[0]
        logprob = float(split_line[1])

        try:
            if split_line[2]:
                unk_types.add(token)
                num_unks += 1
        except IndexError:
            pass


        #Get log prob sum
        lp_sum += logprob

        num_tokens += 1


    perplexity = (-1/num_tokens) * lp_sum
    perplexity = math.exp(perplexity)

    if len(unk_types) > 0:
        adj_perplexity = (-1/num_tokens) \
                        * (lp_sum - num_unks * math.log(len(unk_types)))

        adj_perplexity = math.exp(adj_perplexity)
    else:
        adj_perplexity = perplexity

    print("Perplexity: {}".format(perplexity))
    print("Adjusted Perplexity: {}".format(adj_perplexity))

if __name__ == "__main__":
    perplexity_calc(open(sys.argv[1]))
