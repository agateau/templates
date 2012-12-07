/*
 * Accumulate time spent and number of calls of a function.
 *
 * Usage: Add the DO_BENCH macro at the beginning of the function to bench.
 */

#include <QDebug>
#include <QByteArray>
#include <QTime>

struct BencherData
{
    int mCalls;
    int mDuration;
};

class Bencher {
public:
    Bencher(const char* function, BencherData* data)
    : mFunction(function)
    , mData(data)
    {
        mChrono.start();
    }

    ~Bencher()
    {
        ++mData->mCalls;
        mData->mDuration += mChrono.elapsed();

        qWarning() << mFunction << "calls:" << mData->mCalls << "total duration:" << mData->mDuration << "average:" << (qreal(mData->mDuration) / mData->mCalls);
    }

private:
    QByteArray mFunction;
    BencherData* mData;
    QTime mChrono;
};

#define DO_BENCH \
    static BencherData _benchData; \
    Bencher _benchBencher(__FUNCTION__, &_benchData);
