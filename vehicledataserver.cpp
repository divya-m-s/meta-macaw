#include "vehicledataserver.h"
#include <QBuffer>
#include <QImage>

VehicleDataServer::VehicleDataServer(QObject *parent) : QObject(parent)
{
    connect(&vehicleData_server, &QTcpServer::newConnection, this, &VehicleDataServer::vehicleDataConnection);
    vehicleData_server.listen(QHostAddress::Any,3000);
}

void VehicleDataServer::vehicleDataConnection()
{
    vehicleData_socket = vehicleData_server.nextPendingConnection();
    qInfo()<<"Vehicle Data Client Connected.";
    connect(vehicleData_socket, &QTcpSocket::readyRead, this, &VehicleDataServer::readVehicleDataClient);
}

void VehicleDataServer::readVehicleDataClient()
{
    const auto message = vehicleData_socket->readAll();
    QString stringMessage = QString(message);
            emit newMessage(stringMessage);
            stringMessage.clear();
}
