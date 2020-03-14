import time


class NLog:
    """
    When you can't figure out what is going on, where logging messages are
    going, replace an existing Logger instance with this class.
    """
    def __init__(self, filename):
        self.fl = open(filename, "a")

    def debug(self, msg, *args):
        self._log("D", msg, *args)

    def info(self, msg, *args):
        self._log("I", msg, *args)

    def warn(self, msg, *args):
        self._log("W", msg, *args)

    def error(self, msg, *args):
        self._log("E", msg, *args)

    def _log(self, level, msg, *args):
        timestamp = time.strftime("%H:%M:%S", time.localtime())
        msg = "{} {} {}\n".format(timestamp, level, msg % args)
        self.fl.write(msg)
        self.fl.flush()


logger = NLog("/tmp/mylog.log")
