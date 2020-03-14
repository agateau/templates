#include <execinfo.h>

QString backtrace(int levels = -1) {
	QString s;
	void* trace[256];
	int n = backtrace(trace, 256);
	if (!n) {
		return s;
	}
	char** strings = backtrace_symbols (trace, n);

	if ( levels != -1 ) {
		n = qMin( n, levels );
	}		
	s = QLatin1String("[\n");

	for (int i = 0; i < n; ++i) {
		s += QString::number(i) +
			QLatin1String(": ") +
			QLatin1String(strings[i]) + QLatin1String("\n");
	}
	s += QLatin1String("]\n");
	if (strings) {
		free (strings);
	}

	return s;
}
