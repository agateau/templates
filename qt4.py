#!/usr/bin/env python
import sys

from PyQt4.QtCore import *
from PyQt4.QtGui import *

class Window(QWidget):
    def __init__(self):
        QWidget.__init__(self)

def main():
    app = QApplication(sys.argv)
    window = Window()

    window.show()
    app.exec_()
    return 0

if __name__ == "__main__":
    sys.exit(main())
# vi: ts=4 sw=4 et
