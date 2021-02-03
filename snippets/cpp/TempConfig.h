#pragma once

#include <QColor>
#include <QObject>

class TempConfig : public QObject {
    Q_OBJECT
    Q_PROPERTY(QColor color MEMBER color NOTIFY changed)
    Q_PROPERTY(int fontSize MEMBER fontSize NOTIFY changed)
public:
    explicit TempConfig(const QString& path, QObject* parent = nullptr);

    void load();

    QColor color;
    int fontSize;

signals:
    void changed();

private:
    QString mPath;
};
