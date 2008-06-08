#include <QFile>

static QString readUtf8File(const char* name) {
	QFile file(name);
	if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
		qWarning("Couldn't open %s", name);
		return QString();
	}

	QByteArray data = file.readAll();
	return QString::fromUtf8(data);
}
