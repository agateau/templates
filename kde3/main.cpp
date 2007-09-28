// Qt
#include <qlabel.h>

// KDE
#include <kaboutdata.h>
#include <kapplication.h>
#include <kcmdlineargs.h>

int main(int argc, char** argv) {
	KAboutData aboutData("hello", I18N_NOOP("Hello"),
		"1.0", I18N_NOOP("A nice program"), KAboutData::License_GPL,
		"Copyright 2007, Someone", 0, "http://example.com");

	KCmdLineArgs::init(argc, argv, &aboutData);
	KApplication kapplication;

	QLabel label(0);
	label.setText("Hello");
	label.show();
	kapplication.setMainWidget(&label);

	return kapplication.exec();
}
