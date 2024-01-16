import argparse
import logging

VERBOSE = logging.INFO - 1

LOG_FORMAT = "%(levelname)-7s: %(message)s"

DEBUG_LOG_FORMAT = "%(asctime)s %(levelname)-7s %(funcName)s() %(message)s"


class Logger:
    """Thin wrapper of a Logger instance to add a `verbose()` method"""
    def __init__(self, name):
        self._logger = logging.getLogger(name)

    def verbose(self, *args, **kwargs):
        kwargs["stacklevel"] = 2
        self._logger.log(VERBOSE, *args, **kwargs)

    # Forwarded methods
    def debug(self, *args, **kwargs):
        self._logger.debug(*args, **kwargs)

    def info(self, *args, **kwargs):
        self._logger.info(*args, **kwargs)

    def warn(self, *args, **kwargs):
        self._logger.warn(*args, **kwargs)

    def error(self, *args, **kwargs):
        self._logger.error(*args, **kwargs)

    def critical(self, *args, **kwargs):
        self._logger.critical(*args, **kwargs)

    def exception(self, *args, **kwargs):
        self._logger.exception(*args, **kwargs)


def setup_logger(filename="-", app_level: int=0):
    level = {
        0: logging.INFO,
        1: VERBOSE,
        2: logging.DEBUG
    }[app_level]

    log_format = DEBUG_LOG_FORMAT if level == logging.DEBUG else LOG_FORMAT

    logging.addLevelName(VERBOSE, "VERBOSE")

    if filename == "-":
        filename = None
    logging.basicConfig(
        filename=filename, level=level, format=log_format, datefmt="%H:%M:%S"
    )

# ----- Example usage -----


logger = Logger(__name__)


def do_something():
    logger.info("Doing something")
    logger.verbose("Reticulating splines")


def main():
    parser = argparse.ArgumentParser(
        formatter_class=argparse.RawDescriptionHelpFormatter,
        description=__doc__)
    parser.add_argument("-v", "--verbose", action="store_true",
                        help="Be more verbose")
    parser.add_argument("-d", "--debug", action="store_true",
                        help="Show debug logs")
    args = parser.parse_args()

    if args.debug:
        app_level = 2
    elif args.verbose:
        app_level = 1
    else:
        app_level = 0

    setup_logger(app_level=app_level)
    logger.info("Starting")
    logger.debug("bla=12")
    do_something()
    logger.info("Done")


if __name__ == "__main__":
    main()
