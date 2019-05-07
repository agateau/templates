#include <QString>

#include <optional>

namespace {
std::optional<QByteArray> internalGet(const char* name) {
    if (!qEnvironmentVariableIsSet(name)) {
        return {};
    }
    return qgetenv(name);
}
}

namespace EnvVars {

qreal getReal(const char* name, qreal defaultValue) {
    auto var = internalGet(name);
    return var.has_value() ? var.value().toFloat() : defaultValue;
}

QString getString(const char* name, const QString& defaultValue) {
    auto var = internalGet(name);
    return var.has_value() ? QString::fromUtf8(var.value()) : defaultValue;
}

}
