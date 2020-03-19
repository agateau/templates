#include "backtrace.h"

#include <iostream>

void func2() {
    std::cout << get_backtrace() << '\n';
}

void func1() {
    func2();
}

int main(int argc, char** argv) {
    func1();
    return 0;
}
