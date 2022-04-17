#ifndef VEHICLEDATASERVER_H
#define VEHICLEDATASERVER_H

#include <QTcpSocket>
#include <QTcpServer>
class VehicleDataServer: public QObject
{
    Q_OBJECT

public:
    explicit VehicleDataServer(QObject *parent = nullptr);

signals:
    void newMessage(const QString &passMessage);

public slots:
    void readVehicleDataClient();

private slots:
    void vehicleDataConnection();

private:
    QTcpSocket *vehicleData_socket;
    QTcpServer vehicleData_server;
};

#endif // VEHICLEDATASERVER_H
