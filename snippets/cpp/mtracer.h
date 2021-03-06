#ifndef MTRACER_H
#define MTRACER_H

#include <cstdio>
#include <cstdlib>
#include <cstring>

extern int __mtracer_g_indent;

/*
 * Logs entering and leaving blocks across multiple files.
 *
 * Usage:
 * In *one single* file, #define MTRACER_VAR before including mtracer.h
 *
 * Where necessary, #include <mtracer.h>, then add MTRACER at the beginning of
 * functions to trace.
 */
class MTracer {
public:
    MTracer(const char* name)
    : m_name(strdup(name)) {
        print_indent();
        fprintf(stderr, "┌ %s\n", m_name);
        __mtracer_g_indent++;
    }

    ~MTracer() {
        __mtracer_g_indent--;
        print_indent();
        fprintf(stderr, "└ %s\n", m_name);
        free(m_name);
    }

private:
    void print_indent() {
        for (int x = 0; x < __mtracer_g_indent; ++x) {
            fprintf(stderr, "│ ");
        }
    }
    char* const m_name;
};

#define MTRACER MTracer __mtracer(__PRETTY_FUNCTION__);

#ifdef MTRACER_VAR
int __attribute__ ((visibility ("default"))) __mtracer_g_indent = 0;
#endif

#endif
