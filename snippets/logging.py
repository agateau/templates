import logging


def setup_logger(logfile):
    FORMAT = '%(asctime)s %(levelname)s: %(message)s'
    log_config = dict(format=FORMAT, level=logging.DEBUG)
    if logfile:
        log_config['filename'] = logfile
    logging.basicConfig(**log_config)
