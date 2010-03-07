#ifndef MYDEBUG_H
#define MYDEBUG_H

#include <QDebug>
class Tracer
{
public:
    Tracer(const char* msg, const char* fcn)
    : mMsg(msg)
    , mFcn(fcn)
    {}

    QDebug operator()()
    {
        return qDebug() << mMsg << mFcn;
    }

private:
    const char* mMsg;
    const char* mFcn;
};

Tracer myTracer(const char* msg, const char* fcn)
{
    return Tracer(msg, fcn);
}

#define kDebug myTracer("debug", __FUNCTION__)
#define kWarning myTracer("warning", __FUNCTION__)
#define kError myTracer("error", __FUNCTION__)

#endif /* MYDEBUG_H */
