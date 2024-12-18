import sys

if sys.stdout.isatty():
    BOLD = "\033[01m"
    RED = "\033[31m"
    GREEN = "\033[32m"
    ORANGE = "\033[33m"
    BLUE = "\033[34m"
    PURPLE = "\033[35m"
    CYAN = "\033[36m"
    GREY = "\033[37m"
    RESET = "\033[0;0m"
else:
    BOLD = ""
    RED = ""
    GREEN = ""
    ORANGE = ""
    BLUE = ""
    PURPLE = ""
    CYAN = ""
    GREY = ""
    RESET = ""
