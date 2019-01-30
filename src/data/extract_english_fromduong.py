import sys

with open(sys.argv[1], 'r') as f:
    for line in f:
        if line[0:2] == 'en':
            print(line.strip())
