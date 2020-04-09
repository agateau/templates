import traceback


def foo():
    print("".join(traceback.format_stack()))


def main():
    foo()


main()
