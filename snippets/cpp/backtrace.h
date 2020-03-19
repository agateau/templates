#include <execinfo.h>

#include <string>

std::string get_backtrace(int max_depth = -1) {
    void* trace[256];
    int depth = backtrace(trace, 256);
    if (depth == 0) {
        return {};
    }
    if (max_depth != -1) {
        depth = std::min(depth, max_depth);
    }
    char** symbols = backtrace_symbols(trace, depth);
    std::string result = "[\n";

    for (int i = 0; i < depth; ++i) {
        std::string symbol = symbols[i];
        result += std::to_string(i) + ": " + symbol + '\n';
    }
    result += "]\n";
    if (symbols) {
        free(symbols);
    }

    return result;
}
