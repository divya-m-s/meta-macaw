#include <QTcpSocket>
#include <QTcpServer>

class AlbumServer : public QObject
{
    Q_OBJECT

public:
    explicit AlbumServer(QObject *parent = nullptr);

signals:
    void newMessage(const QString &passMessage);

public slots:
    void readAlbumArtClient();

private slots:
    void albumArtConnection();

private:
    QTcpSocket *albumArt_socket;
    QTcpServer albumArt_server;
};
