#include "appDataServer.h"
#include <QBuffer>
#include <QImage>

AppDataServer::AppDataServer(QObject *parent) : QObject(parent)
{
    connect(&appData_server, &QTcpServer::newConnection, this, &AppDataServer::appDataConnection);
    appData_server.listen(QHostAddress::Any,3001);
}

void AppDataServer::appDataConnection()
{
    appData_socket = appData_server.nextPendingConnection();
    qInfo()<<"App Data Client Connected.";
    connect(appData_socket, &QTcpSocket::readyRead, this, &AppDataServer::readAppDataClient);
}

void AppDataServer::readAppDataClient()
{
    QString data;
    QString dataID;
    QString strDataLength;
    int dataLength;

    QByteArray message = appData_socket->readAll();
    qInfo()<<"received byte array: " << message;
    QString stringMessage = QString(message);

    for(int i = 0; i < 2; ++i)
    {
        dataID = dataID + stringMessage.at(i);
    }
    for(int i = 2; i < 4; ++i)
    {
        strDataLength = strDataLength + stringMessage.at(i);
    }
    dataLength = strDataLength.toInt();
    for(int i = 4; i < 4 + dataLength; ++i)
    {
        data = data + stringMessage.at(i);
    }
    emit newMessage(data, dataID);
}
