// Uncomment this define to prefix all strings with a wide string.
#define WIDE
#ifdef WIDE
QString wide_prefix()
{
    return qgetenv("WIDE");
}

inline QString wide_i18n(const char *txt)
{
    return wide_prefix() + i18n(txt);
}

template <typename A1>
inline QString wide_i18n(const char *txt, const A1 &a1)
{
    return wide_prefix() + i18n(txt, a1);
}
#define i18n(x, ...) wide_i18n(x, ## __VA_ARGS__)
#define i18nc(c, x, ...) i18n(x, ## __VA_ARGS__)
#endif
