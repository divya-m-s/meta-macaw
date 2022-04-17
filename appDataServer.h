#include <QTcpSocket>
#include <QTcpServer>

class AppDataServer : public QObject
{
    Q_OBJECT

public:
    explicit AppDataServer(QObject *parent = nullptr);

signals:
    void newMessage(const QString &passMessage1, const QString &passMessage2);

public slots:
    void readAppDataClient();

private slots:
    void appDataConnection();

private:
    QTcpSocket *appData_socket;
    QTcpServer appData_server;
};
