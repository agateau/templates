bool checkObjectPathExists(const QString &service, const QString &path)
{
    QDBusMessage message = QDBusMessage::createMethodCall(service, path, "org.freedesktop.DBus.Introspectable", "Introspect");
    QDBusMessage reply = QDBusConnection::sessionBus().call(message, QDBus::Block, 15 /* timeout */);
    return reply.type() == QDBusMessage::ReplyMessage;
}
