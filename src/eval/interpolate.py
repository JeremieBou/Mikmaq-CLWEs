import sys

def interpolate(file1, file2, weight):
    inter_dict = {}

    with open(file1) as f1:
        for line in f1:
            line_split = line.split()
            token = line_split[0]
            prob = float(line_split[1])
            inter_dict[token] = float(prob)

    with open(file2) as f2:
        for line in f2:
            line_split = line.split()
            token = line_split[0]
            prob = float(line_split[1])

            new_prob = weight * inter_dict.get(token, prob) \
                        + (1 - weight) * prob

            print("{} {}".format(token, new_prob))

if __name__ == "__main__":
    file1 = sys.argv[1]
    file2 = sys.argv[2]
    weight = float(sys.argv[3])


    interpolate(file1, file2, weight)
