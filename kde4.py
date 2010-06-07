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
    aboutData = KAboutData(
        "internal-name", # appName
        "", # catalogName
        ki18n("Public Name"), # programName
        "1.0")
    aboutData.setLicense(KAboutData.License_GPL_V3)
    aboutData.setShortDescription(ki18n("Description"))
    aboutData.setCopyrightStatement(ki18n("(c) YEAR Author"))
    aboutData.setProgramIconName("kde")

    KCmdLineArgs.init(sys.argv, aboutData)
    app = KApplication()
    window = Window()

    window.show()
    app.exec_()
    return 0


if __name__=="__main__":
    sys.exit(main())
# vi: ts=4 sw=4 et
