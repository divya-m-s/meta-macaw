#include "tcpclient.h"
#include <QBuffer>
#include <QImage>

TcpClient::TcpClient(QObject *parent) : QObject(parent)
{
    connect(&socket_sim, &QTcpSocket::readyRead, this, &TcpClient::onReadyRead);
}



void TcpClient::connectToServer(const QString &ip, const QString &port)

{
    socket_sim.connectToHost(ip, port.toUInt());
}

void TcpClient::onReadyRead()
{
    const auto message = socket_sim.readAll();
    QString stringMessage = QString(message);
    QString temp;
    for (int i = 0; i < stringMessage.size(); ++i) {
        if (stringMessage.at(i) != QChar('X')){
            temp = temp + stringMessage.at(i);
        }
        else{
            emit newMessage(temp);
            temp.clear();
        }
    }
}
