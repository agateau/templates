"""
Alias test cases
@author: Sébastien Renard <Sebastien.Renard@digitalfox.org>
@license: GPL v3 or later
"""
from yokadi.core.signal import Signal
from yokadi.tests.yokaditestcase import YokadiTestCase


class Call:
    def __init__(self, *args, **kwargs):
        self.args = args
        self.kwargs = kwargs

    def __eq__(self, other):
        return self.args == other.args and self.kwargs == other.kwargs


class Receiver:
    def __init__(self):
        self.calls = []

    def callBack(self, *args, **kwargs):
        self.calls.append(Call(*args, **kwargs))

    def clear(self):
        self.calls = []


class SignalTestCase(YokadiTestCase):
    def testEmit_noReceiver(self):
        signal = Signal()
        signal.emit()

    def testEmit_oneReceiver(self):
        receiver = Receiver()
        signal = Signal()
        signal.connect(receiver.callBack)
        signal.emit(1, 2, n=3)
        self.assertEqual(receiver.calls, [Call(1, 2, n=3)])

    def testEmit_nReceivers(self):
        receiver1 = Receiver()
        receiver2 = Receiver()
        signal = Signal()
        signal.connect(receiver1.callBack)
        signal.connect(receiver2.callBack)
        signal.emit(1, 2, n=3)
        self.assertEqual(receiver1.calls, [Call(1, 2, n=3)])
        self.assertEqual(receiver2.calls, [Call(1, 2, n=3)])

    def testEmit_disconnect(self):
        receiver = Receiver()
        signal = Signal()
        signal.connect(receiver.callBack)
        signal.emit(1, 2, n=3)
        self.assertEqual(receiver.calls, [Call(1, 2, n=3)])

        signal.disconnect(receiver.callBack)
        receiver.clear()
        signal.emit(1, 2, n=3)
        self.assertEqual(receiver.calls, [])
