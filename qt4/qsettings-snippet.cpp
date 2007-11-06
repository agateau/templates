#include <QtCore/QDir>
#include <QtCore/QSettings>

/* wengophone.ini
[General]
num=12
str="bla bla bla"
*/

QSettings settings(QDir::homePath() + "/wengophone.ini", QSettings::IniFormat);
int num = settings.value("num").toInt();
int str = settings.value("str").toString();
