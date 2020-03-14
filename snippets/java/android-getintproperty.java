import android.os.SystemProperties;

private static int getIntProperty(String name, int defaultValue) {
    String txt = SystemProperties.get(name);
    if (TextUtils.isEmpty(txt)) {
        return defaultValue;
    }
    Log.d(TAG, "Found value for " + name + ": " + txt);
    return Integer.parseInt(txt);
}
