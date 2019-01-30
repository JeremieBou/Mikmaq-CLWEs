import sys
import random

f1 = open(sys.argv[1], 'r')
f2 = open(sys.argv[2], 'r')

line1 = f1.readline()
line2 = f2.readline()

while line1 and line2:
    if random.randint(0, 1) == 0:
        print(line1.strip())
        line1 = f1.readline()
    else:
        print(line2.strip())
        line2 = f2.readline()

while line1:
    print(line1.strip())
    line1 = f1.readline()

while line2:
    print(line2.strip())
    line2 = f2.readline()
