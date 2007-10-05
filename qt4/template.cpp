#include <QtGui/QApplication>
#include <QtGui/QWidget>


int main(int argc, char** argv) {
	QApplication app(argc, argv);
	QWidget* tabWidget = new QWidget();
	tabWidget->show();
	return app.exec();
}
