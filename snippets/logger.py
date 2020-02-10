import logging

FORMAT = "%(asctime)s:%(levelname)s:%(funcName)s: %(message)s"


def setup_logger(filename="-", debug=True):
    level = logging.DEBUG if debug else logging.INFO
    if filename == "-":
        filename = None
    logging.basicConfig(filename=filename, level=level, format=FORMAT)
