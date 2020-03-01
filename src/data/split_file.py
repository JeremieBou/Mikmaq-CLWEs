import sys

with open(sys.argv[1], 'r') as f:
    for line in f:
        sublines = line.split('.')
        for subline in sublines:
            print(subline + "\n")
