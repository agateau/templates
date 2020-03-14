"""
Minimalist Signal implementation.
@author: Aurélien Gâteau <mail@agateau.com>
@license: GPL v3 or later
"""


class Signal:
    def __init__(self):
        self._receivers = set()

    def connect(self, receiver):
        self._receivers.add(receiver)

    def disconnect(self, receiver):
        self._receivers.remove(receiver)

    def emit(self, *args, **kwargs):
        for receiver in self._receivers:
            receiver(*args, **kwargs)
