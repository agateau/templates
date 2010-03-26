class Tracer
{
public:
    Tracer(const char *name)
    : m_name(strdup(name))
    {
        for (int x=0; x < Tracer::s_indent; ++x) {
            fprintf(stderr, " ");
        }
        fprintf(stderr, "%s\n", m_name);
        s_indent++;
    }

    ~Tracer()
    {
        s_indent--;
        for (int x=0; x < Tracer::s_indent; ++x) {
            fprintf(stderr, " ");
        }
        fprintf(stderr, "/%s\n", m_name);
        delete m_name;
    }

private:
    char* m_name;
    static int s_indent;
};

int Tracer::s_indent = 0;

#define TRACER Tracer __tracer(__FUNCTION__);
