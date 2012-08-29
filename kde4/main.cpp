#include <KAboutData>
#include <KApplication>
#include <KCmdLineArgs>
#include <KDebug>
#include <KLocale>
#include <KUrl>

int main(int argc, char** argv)
{
    KAboutData aboutData(
        "app", // appName
        0,     // catalogName
        ki18n("App"), // programName
        "0.1.0",
        // Start of optional arguments
        ki18n("App Description"),
        KAboutData::License_GPL_V3
        );

    KCmdLineArgs::init(argc, argv, &aboutData);

    KCmdLineOptions options;
    options.add("+[file]", ki18n("File to open"));
    options.add("q").add("quiet", ki18n("Be quiet"));
    options.add("timeout <value>", ki18n("A timeout, with a default value"), "1000");
    KCmdLineArgs::addCmdLineOptions(options);

    KApplication app;

    KCmdLineArgs* args = KCmdLineArgs::parsedArgs();

    bool quiet = args->isSet("q");
    int timeout = args->getOption("timeout").toInt();

    kWarning() << "quiet=" << quiet;
    kWarning() << "timeout=" << timeout;

    if (args->count() == 1) {
        QString fileAsString = args->arg(0);
        KUrl fileAsUrl = args->url(0);

        kWarning() << "file (as string)=" << fileAsString;
        kWarning() << "file (as url)=" << fileAsUrl;
    }

	return app.exec();
}
