import math, sys

# An implementation of perplexity that follows the definition given in
# Equation 3.52, but using natural logarithms instead of log base 2

def perplexity(infile):
    logprobs = [float(x.split()[1]) for x in infile]
    logP = sum(logprobs)
    N = float(len(logprobs))
    HW = (-1/N) * logP
    perplextiy = math.exp(HW)
    print(perplextiy)

if __name__ == "__main__":
    perplexity(open(sys.argv[1]))
