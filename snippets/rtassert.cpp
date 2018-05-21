#include "rtassert.h"


int main(int argc, char** argv) {
    RT_ASSERT(argc > 1, "Not enough arguments");
    RT_ASSERT(1 > 2);
    return 0;
}
