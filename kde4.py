#!/usr/bin/env python
import sys

from PyQt4.QtCore import *
from PyQt4.QtGui import *

from PyKDE4.kdecore import *
from PyKDE4.kdeui import *


class Window(KMainWindow):
    def __init__(self):
        KMainWindow.__init__(self)

        self.toolBar().addAction(KStandardAction.open(self.openFile, self))

        content = QLabel("Hello!")
        self.setCentralWidget(content)

    def openFile(self):
        print "openFile"

def main():
    KCmdLineArgs.init(sys.argv,
        "internal-name",
        "",
        ki18n("Public Name"),
        "1.0",
        ki18n("Description"))
    app = KApplication()
    window = Window()

    window.show()
    app.exec_()
    return 0


if __name__=="__main__":
    sys.exit(main())
# vi: ts=4 sw=4 et
