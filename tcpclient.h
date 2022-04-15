#ifndef TCPCLIENT_H
#define TCPCLIENT_H

#include <QTcpSocket>
#include <qqml.h> //for QML_ELEMENT

class TcpClient : public QObject
{
    Q_OBJECT

public:
    explicit TcpClient(QObject *parent = nullptr);

signals:
    void newMessage(const QString &passMessage);

public slots:
    void connectToServer(const QString &ip, const QString &port);

private slots:
    void onReadyRead();

private:
    QTcpSocket socket_sim;
};

#endif // TCPCLIENT_H
