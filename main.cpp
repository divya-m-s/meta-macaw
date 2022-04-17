#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "albumServer.h"
#include "appDataServer.h"
#include "vehicledataserver.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    /***** vehicle data server code *****/
    VehicleDataServer macawVehicleServer;
    engine.rootContext()->setContextProperty("vehicleServer", &macawVehicleServer);

    /***** album art server code *****/
    AlbumServer macawAlbumServer;
    engine.rootContext()->setContextProperty("albumServer", &macawAlbumServer);

    /***** app data server code *****/
    AppDataServer macawAppDataServer;
    engine.rootContext()->setContextProperty("appDataServer", &macawAppDataServer);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);



    return app.exec();
}
