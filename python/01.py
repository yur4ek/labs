import os
import sys


try:
    if os.path.exists(sys.argv[1]):
        print("error: file {} exists".format(sys.argv[1]))
        sys.exit(1)
except IndexError:
    print("usage: {} dump_file".format(sys.argv[0]))
    sys.exit(1)

dump = open(sys.argv[1], 'w')
i = 0
while True:
    try:
        buf = ""
        d = i
        for i in range(d, d+1000):
            buf += "{}a\n".format(i)
        dump.write(buf)
    except KeyboardInterrupt:
        dump.close()
        break


