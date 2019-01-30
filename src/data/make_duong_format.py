import sys

with open(sys.argv[1], 'r') as f:
    for line in f:
        tokens = line.strip().split(' ')
        new_line = []

        for token in tokens:
            if not token == '</s>':
                new_line.append(sys.argv[2] + '_' + token)

        print(" ".join(new_line))
