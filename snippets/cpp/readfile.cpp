#include <QDebug>
#include <QFile>

#include <optional>

std::optional<QString> readFile(const QString& path) {
    QFile file(path);
    if (!file.open(QIODevice::ReadOnly)) {
        qWarning() << QString("Can't open '%1'").arg(path);
        return {};
    }
    QString content = QString::fromUtf8(file.readAll());
    return content;
}
