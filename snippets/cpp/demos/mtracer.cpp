// define MTRACER_VAR in one single file!
#define MTRACER_VAR
#include "mtracer.h"
#include <iostream>

int g(int x, int y) {
    MTRACER
    std::cout << "We are in g(), doing our job\n";
    return x * y;
}

void f() {
    MTRACER
    g(4, 3);
}

int main(int argc, char** argv) {
    f();
    return 0;
}
