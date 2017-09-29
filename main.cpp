#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "mymediaplayer.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    MyMediaPlayer* player = new MyMediaPlayer();
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("mymediaplayer", player);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
