#include <iostream>
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "Hello.h"
#include "solanaRpc.h"


int main(int argc, char *argv[])
{

    Q_INIT_RESOURCE(qml);

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QApplication app(argc, argv);
    qmlRegisterType<Hello>("es.hello", 1, 0, "HelloImp");
    qmlRegisterUncreatableType<SolanaRPC>("es.solana", 1, 0, "SolanaRPC", "Use this class in GUI");

    SolanaRPC solana;
    solana.getBalance("Grw8AU3rJEQfXg4XChdR3d14JNiVSZ2qHvbBvqvvVZPs");

    solana.getLatestBlockhash();

    Key sender = Key("33WRmCQK4EkbWxYtfrnQiqQNFuSZSFaZ9zQTJV46WxLt");
    Key recipient = Key("Grw8AU3rJEQfXg4XChdR3d14JNiVSZ2qHvbBvqvvVZPs");

    QJsonObject data;

    data.insert("data", "6, 221, 246, 225, 215, 101, 161,\n"
                        "  147, 217, 203, 225,  70, 206, 235,\n"
                        "  121, 172,  28, 180, 133, 237,  95,\n"
                        "   91,  55, 145,  58, 140, 245, 133,\n"
                        "  126, 255,   0, 169");

    TxnInstruction instruction(sender, recipient, "0", data);

    instruction.serialize();

    //solana.createAccount("33WRmCQK4EkbWxYtfrnQiqQNFuSZSFaZ9zQTJV46WxLt");


    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main"));
    engine.rootContext()->setContextProperty("Solana", &solana);

    engine.load(url);



    return app.exec();
}