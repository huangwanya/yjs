import subprocess

import os
import sys


def main(name):
    print(name)
    dirpath = os.path.dirname(os.path.abspath(__file__))
    sys.path.append(dirpath)
    cmd = "scrapy crawl %s" % name
    subprocess.check_call(cmd, cwd=dirpath)


if __name__ == '__main__':
    main('Academic')
