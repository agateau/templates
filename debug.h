#define GV_RETURN_IF_FAIL(cond, msg) \
    if (!(cond)) { \
        kFatal() << "Condition '" << #cond << "' failed" << msg; \
        return; \
    }

#define GV_RETURN_VALUE_IF_FAIL(cond, value, msg) \
    if (!(cond)) { \
        kFatal() << "Condition '" << #cond << "' failed." << msg; \
        return value; \
    }

