import random
import sys
import re

READ_PATTERN = r'[0-9]*,(.*)';

def sample_file(file_path, output_size, line_num):
    i = 0
    with open(file_path, 'r') as f:
        while i < output_size:
            i += 1
            k = random.randint(1, line_num - 1)
            f.seek(k)

            line = f.read().strip()
            line_read = re.search(READ_PATTERN, line)

            if line_read:
                print(line_read[1])
            else:
                print(line)



def reservoir_sample_file(file_path, output_size):
    buffer = []

    with open(file_path, 'r') as f:
        for line_num, line in enumerate(f):
            n = line_num + 1.0
            r = random.random()

            if n <= output_size:
                buffer.append(line)
            elif r < output_size/n:

                loc = random.randint(0, output_size-1)
                buffer[loc] = line

    for line in buffer:
        line = line.strip()
        line_read = re.search(READ_PATTERN, line)

        if line_read:
            print(line_read[1])
        else:
            print(line)




if __name__ == "__main__":
    file_path = sys.argv[1]
    output_size = int(sys.argv[2])

    try:
        sample_file(file_path, output_size, int(sys.argv[3]))
    except IndexError:
        reservoir_sample_file(file_path, output_size)
