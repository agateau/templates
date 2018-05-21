#ifndef RTASSERT_H
#define RTASSERT_H

#include <any>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

#define dbgassert(EX,...) \
  (void)((EX) || (realdbgassert (std::tie(__VA_ARGS__),#EX,__FILE__, __LINE__),0))

void rt_assert_impl(const char *condition, const char *file, int line, const std::string &msg) {
    std::cout << "Assertion failed:" << condition << " in file " << file << ", line " << line << '\n'
        << "  Message: " << msg << '\n';
    std::abort();
}

template <typename ...Args>
std::string rt_assert_wrap(Args ...args) {
    std::ostringstream ss;
    std::vector<std::any> vec = {args...};
    for (const auto& arg : args) {
        ss << arg;
    }
    return ss.str();
}

#define RT_ASSERT(condition, ...) \
    if (!(condition)) { \
        rt_assert_impl(#condition, __FILE__, __LINE__, rt_assert_wrap(__VA_ARGS__)); \
    }

//(void)((condition) || (realdbgassert1 (print_info(__VA_ARGS__),#EX,__FILE__, __LINE__),0))

#endif /* RTASSERT_H */
