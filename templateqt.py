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


if __name__=="__main__":
	main()
