import time


class TimeoutError(Exception):
    pass


def wait_for(condition_function, max_duration=30, poll_interval=1):
    start = time.time()
    while not condition_function():
        time.sleep(poll_interval)
        duration = time.time() - start
        if duration > max_duration:
            raise TimeoutError("waited for too long ({:.3f} seconds)"
                               .format(duration))


#################

import os


wait_for(lambda: "foo" in os.listdir())
