def setup_logger(logfile, debug):
    level = logging.DEBUG if debug else logging.INFO
    if logfile == '-':
        logfile = None
    logging.basicConfig(
        filename=logfile, level=level,
        format='%(asctime)s:%(levelname)s:%(funcName)s: %(message)s')
