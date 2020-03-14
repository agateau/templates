/* To run the demo:
 * Create test.json with the following content:
     {
         "x": 12,
         "msg": "Hello world"
     }
 * and define $TEST_JSON as the path to test.json
 */
#include "qtjsonvars.h"

#include <QDebug>

static void readVars(const QtJsonVars& vars) {
    qDebug() << "x:" << vars.value("x").toInt();
    qDebug() << "msg:" << vars.value("msg").toString();
}

int main(int argc, char** argv) {
    qDebug() << "# From test.json";
    QtJsonVars vars1("test.json");
    readVars(vars1);

    qDebug() << "# From $TEST_JSON";
    QtJsonVars vars2("$TEST_JSON");
    readVars(vars2);
    return 0;
}
