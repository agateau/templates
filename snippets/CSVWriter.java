package com.genymotion.realusebench;

import java.io.IOException;
import java.io.Writer;
import java.util.Locale;

class CSVWriter {
    private static final char CELL_SEPARATOR = ',';
    private final Writer mWriter;
    private boolean mFirstCell = true;

    public CSVWriter(Writer writer) {
        mWriter = writer;
    }

    public CSVWriter add(CharSequence value) throws IOException {
        if (mFirstCell) {
            mFirstCell = false;
        } else {
            mWriter.append(CELL_SEPARATOR);
        }
        mWriter.append(value);
        return this;
    }

    public CSVWriter add(float value) throws IOException {
        String str = String.format(Locale.US, "%f", value);
        return add(str);
    }

    public void endRow() throws IOException {
        mWriter.append('\n');
        mFirstCell = true;
    }

    public void close() throws IOException {
        mWriter.close();
    }
}
