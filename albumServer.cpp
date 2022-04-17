#include "albumServer.h"
#include <QBuffer>
#include <QImage>

int imageCount;

AlbumServer::AlbumServer(QObject *parent) : QObject(parent)
{
    connect(&albumArt_server, &QTcpServer::newConnection, this, &AlbumServer::albumArtConnection);
    albumArt_server.listen(QHostAddress::Any,3002);
}

void AlbumServer::albumArtConnection()
{
    albumArt_socket = albumArt_server.nextPendingConnection();
    qInfo()<<"Album Art Client Connected.";
    connect(albumArt_socket, &QTcpSocket::readyRead, this, &AlbumServer::readAlbumArtClient);
}

void AlbumServer::readAlbumArtClient()
{
    QBuffer *imgb = new QBuffer();
    imgb->open(QIODevice::ReadWrite);
    QByteArray temp;
    temp = albumArt_socket->readAll();
    //qInfo() << temp;
    if((temp.isNull()==false) && (imageCount==2))
    {
        imageCount = 1;
    }
    else if((temp.isNull()==false) && (imageCount!=3))
    {
        imageCount = imageCount+1;
    }
    QString imageNumber = QString::number(imageCount);
    imgb->write(temp);
    QImage *pic = new QImage;
    pic->loadFromData(imgb->buffer());
    pic->save("/home/quest/MediaArt/media" + imageNumber + ".png");
    emit newMessage(imageNumber+"00");
}

