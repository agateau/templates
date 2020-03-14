#ifndef QTJSONVARS_H
#define QTJSONVARS_H

#include <QDebug>
#include <QFile>
#include <QJsonDocument>
#include <QJsonObject>

/**
 * Usage:
 * - #include this file
 * - Create an instance like this:
 *   QtJsonVars vars("/path/to/a.json");
 * or
 *   QtJsonVars vars("$SOME_ENV_VAR");
 *
 * - Read vars using vars.value("someField");
 *
 */
class QtJsonVars {
public:
    explicit QtJsonVars(const QString& path) : mPath(path) {
        if (mPath[0] == '$') {
            mPath = qgetenv(mPath.mid(1).toUtf8().constData());
        }
        reload();
    }

    bool reload() {
        QFile file(mPath);
        bool ok = file.open(QIODevice::ReadOnly);
        if (!ok) {
            qWarning() << "Could not open" << mPath << file.errorString();
            return false;
        }
        auto json = file.readAll();
        QJsonParseError error;
        auto doc = QJsonDocument::fromJson(json, &error);
        if (error.error != QJsonParseError::NoError) {
            qWarning() << "Failed to parse" << mPath << error.errorString();
            return false;
        }
        mVars = doc.object().toVariantMap();
        return true;
    }

    QVariant value(const QString& name, const QVariant& defaultValue = {}) const {
        return mVars.value(name, defaultValue);
    }

private:
    QString mPath;
    QVariantMap mVars;
};

#endif /* QTJSONVARS_H */
