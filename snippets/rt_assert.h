#ifndef RTASSERT_H
#define RTASSERT_H

#include <iostream>

namespace rt_assert {

void report_fail(const char* condition, const char* function, const char* file, int line, const char* message) {
    std::cout << "Assertion failed: " << condition << '\n';
    std::cout << "  Function: " << function << '\n';
    std::cout << "  File: " << file << ", line: " << line << '\n';
    if (message) {
        std::cout << "  Message: " << message << '\n';
    }
    std::abort();
}

const char* wrap() {
    return nullptr;
}

const char* wrap(const char* arg) {
    return arg;
}

}

/**
 * Usage:
 *
 *   RT_ASSERT(1 > 2);
 * 
 * or:
 *
 *   RT_ASSERT(1 > 2, "Something went wrong");
 */
#define RT_ASSERT(condition, ...) \
    if (!(condition)) { \
        rt_assert::report_fail(#condition, __PRETTY_FUNCTION__, __FILE__, __LINE__, rt_assert::wrap(__VA_ARGS__)); \
    }

#endif /* RTASSERT_H */
