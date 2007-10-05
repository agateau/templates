import os
import sys

from qt import *


class Window(QWidget):
    def __init__(self):
        QWidget.__init__(self)
        pass


def main():
    app=QApplication(sys.argv)

    win=Window()
    win.show()

    app.setMainWidget(win)
    app.exec_loop()

main()
