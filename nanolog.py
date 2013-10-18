import logging
import traceback

# To use in other files
# import logging
# import ubiquity.nanolog
# logger = logging.getLogger(__name__)

__inited = False

if not __inited:
    logging.basicConfig(filename='/tmp/nanolog.log',
                        level=logging.DEBUG,
                        format='%(asctime)s:%(levelname)s:%(name)s:%(funcName)s: %(message)s')
    __inited = True

def get_trace():
    lines = traceback.format_stack()
    return "".join(lines)
