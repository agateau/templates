// Build with g++ result.cpp -o result -I$(qmake -query QT_INSTALL_HEADERS) -L$(qmake -query QT_INSTALL_LIBS) -lQt5Core
#include <QtCore/QDebug>
#include <QtCore/QString>

class Result
{
public:
    enum {
        NoError = 0
    };

    Result()
    : m_errorCode(NoError)
    {}

    static Result ok()
    {
        return Result();
    }

    static Result fail(const QString &message, int errorCode = -1)
    {
        Result result;
        result.m_message = message;
        result.m_errorCode = errorCode;
        return result;
    }

    operator bool() const
    {
        return m_errorCode == NoError;
    }

    QString message() const
    {
        return m_message;
    }

    int errorCode() const
    {
        return m_errorCode;
    }

protected:
    int m_errorCode;
    QString m_message;
};

template <class T>
class ResultValue : public Result
{
public:
    ResultValue(const T &data)
    : m_data(data)
    {}

    static ResultValue fail(const QString &message, int errorCode = -1)
    {
        ResultValue result;
        result.m_message = message;
        result.m_errorCode = errorCode;
        return result;
    }

    T data() const
    {
        return m_data;
    }

private:
    ResultValue()
    {}

    T m_data;
};

//- Example -------------------------------------------------------------------------------
struct Foo
{
    int value;
};

ResultValue<Foo *> funcA()
{
    Foo *f = new Foo;
    f->value = 12;
    return ResultValue<Foo *>(f);
}

ResultValue<Foo *> funcB()
{
    return ResultValue<Foo *>::fail("Not enough memory");
}

int main(int argc, char *argv[])
{
    Result result = Result::ok();
    Q_ASSERT(result);
    Q_ASSERT(result == Result::ok());

    result = Result::fail("Broken");
    Q_ASSERT(!result);
    Q_ASSERT(result != Result::ok());
    Q_ASSERT(result.message() == "Broken");

    ResultValue<Foo *> rf = funcA();
    Q_ASSERT(rf);
    Foo *f = rf.data();
    Q_ASSERT(f->value == 12);
    delete f;

    rf = funcB();
    Q_ASSERT(!rf);
    Q_ASSERT(rf.message() == "Not enough memory");

    return 0;
}
