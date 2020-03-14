#ifndef INLOG_H
#define INLOG_H

/*
 * Handy tool to log within a statement. Examples:
 *
 * int f() {
 *   // Compute stuff
 *   return INLOG 2 * x - y;
 * }
 *
 * Will log the returned value:
 *
 *   src/f.cpp:110 <returned_value>
 *
 * void g(int arg1, const QString &arg2) {
 *   foo(INLOG1("arg1") arg1, INLOG1("arg2") arg2);
 * }
 *
 * Logs the values of arg1 and arg2, prefixing them with the string argument:
 *
 *   src/g.cpp:110 arg1: <value_of_arg1>
 *   src/g.cpp:110 arg2: <value_of_arg2>
 */

#include <QDebug>

class InLog {
public:
    InLog(const char* file, int line, const char* msg = nullptr)
    : m_file(file)
    , m_line(line)
    , m_msg(msg)
    {}

    template <class T>
    QDebug log(QDebug dbg, const T& value) const {
        dbg.nospace() << m_file << ':' << m_line;
        if (m_msg) {
            dbg << ' ' << m_msg << ':';
        }
        dbg.space() << value;
        return dbg;
    }

private:
    const char* const m_file;
    const int m_line;
    const char* const m_msg;
};

template <class T>
T& operator<<(const InLog& log, T& value) {
    log.log(qWarning(), value);
    return value;
}

template <class T>
const T& operator<<(const InLog& log, const T& value) {
    log.log(qWarning(), value);
    return value;
}

#define INLOG InLog(__FILE__, __LINE__) <<
#define INLOG1(msg) InLog(__FILE__, __LINE__, msg) <<

#endif /* INLOG_H */
