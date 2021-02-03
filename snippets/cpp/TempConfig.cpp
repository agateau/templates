#include "TempConfig.h"

#include <QColor>
#include <QFileInfo>
#include <QFileSystemWatcher>
#include <QSettings>
#include <QVariant>

TempConfig::TempConfig(const QString& path, QObject* parent) : QObject(parent), mPath(path) {
    auto watcher = new QFileSystemWatcher(this);
    watcher->addPath(QFileInfo(path).absolutePath());
    watcher->addPath(path);
    connect(watcher, &QFileSystemWatcher::fileChanged, this, &TempConfig::load);
    connect(watcher, &QFileSystemWatcher::directoryChanged, this, &TempConfig::load);
    load();
}

void TempConfig::load() {
    QSettings settings(mPath, QSettings::IniFormat);
    color = settings.value("color").toString();
    fontSize = settings.value("fontSize").toInt();
    changed();
}
