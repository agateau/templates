#include "rt_assert.h"

void my_func() {
    RT_ASSERT(1 > 2);
}

int main(int argc, char** argv) {
    RT_ASSERT(argc > 1, "Not enough arguments");
    my_func();
    return 0;
}
