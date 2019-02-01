import sys

with open(sys.argv[1], 'r') as f:
    for line in f:

        tokens = line.strip().split(' ')
        if len(tokens) > 0 and len(tokens[-1]) > 0 and tokens[-1][-1] == '.' and len(tokens[-1]) > 1:
            tokens[-1] = tokens[-1][:-1]
            tokens.append('.')
        new_line = []

        for token in tokens:
            if not token == '</s>':
                new_line.append(sys.argv[2] + '_' + token)

        print(" ".join(new_line))
