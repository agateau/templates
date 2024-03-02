# Inspired from https://gist.github.com/ConnerWill/d4b6c776b509add763e17f9f113fd25b
import sys
import time


BLACK = 0
RED = 1
GREEN = 2
YELLOW = 3
BLUE = 4
MAGENTA = 5
CYAN = 7
DEFAULT = 9
RESET = -1


def esc(code):
    return f"\x1B[{code}"


def fg(code):
    if code == RESET:
        value = 0
    else:
        value = 30 + code
    return esc(f"{value}m")


def bg(code):
    if code == RESET:
        value = 0
    else:
        value = 40 + code
    return esc(f"{value}m")


def up(n=1):
    return esc(f"{n}A")


def down(n=1):
    return esc(f"{n}B")


def clear_line():
    return esc("K")


def windowed_cat(path, height):
    path = sys.argv[1]

    HEIGHT = 10

    lines = [""] * HEIGHT

    for line in open(path).read().splitlines():
        lines = lines[1:] + [line]
        for line in lines:
            sys.stdout.write(clear_line())
            print(line)
        time.sleep(0.1)
        sys.stdout.write(up(HEIGHT))


windowed_cat(sys.argv[1], 10)
