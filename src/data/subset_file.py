import random
import sys


def sample_file(file_path, output_size):
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
        print(line)




if __name__ == "__main__":
    file_path = sys.argv[1]
    output_size = int(sys.argv[2])
    print(output_size)

    sample_file(file_path, output_size)
