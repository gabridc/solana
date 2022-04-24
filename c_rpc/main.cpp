#include <iostream>
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "Hello.h"
#include "solanaRpc.h"
#include "ed25519.h"

void testSign(void);

int main(int argc, char *argv[])
{

    Q_INIT_RESOURCE(qml);

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QApplication app(argc, argv);
    qmlRegisterType<Hello>("es.hello", 1, 0, "HelloImp");
    qmlRegisterUncreatableType<SolanaRPC>("es.solana", 1, 0, "SolanaRPC", "Use this class in GUI");

    SolanaRPC solana;
    solana.getBalance("Grw8AU3rJEQfXg4XChdR3d14JNiVSZ2qHvbBvqvvVZPs");
    auto blockHash = solana.getLatestBlockhash();

    unsigned char privKey[64] = {149,242,174,114,199,140,66,94,170,200,225,250,87,33,212,105,237,103,49,55,206,146,234,34,247,123,242,95,7,13,238,217,235,169,246,15,239,182,111,102,19,98,214,54,202,119,42,4,26,212,65,8,126,250,104,64,185,41,185,184,27,140,126,254};

    KeyPair senderAndPayer = KeyPair(Key("3zt58Esp3GDM4LBqmBXpuTJaNT1WGsDNdLmSH8BLK4UsmNEbh6QiuYVHUtHcPmMs9mdRfhwa2f6ygtEgb18k7naq"),
                                     Key("Grw8AU3rJEQfXg4XChdR3d14JNiVSZ2qHvbBvqvvVZPs", true, false));
    Key recipient = Key("33WRmCQK4EkbWxYtfrnQiqQNFuSZSFaZ9zQTJV46WxLt", false, false);


    QJsonObject data;
    data.insert("data", "hello");
    TxnInstruction txnIns(senderAndPayer.pub_,
                                  std::vector<Key>{recipient},
                                  Key("teQKR3UYBYfoGQyCBhnE8XZx4aKmPMdjoUyxn7iWfeL", false, false),
                          data);

    std::vector<TxnInstruction> instructions;

    instructions.push_back(txnIns);

    Message msg = Message(blockHash.toUtf8(), senderAndPayer,instructions );
    auto msgSer = msg.serialize();

    // TO QString
    auto message = Utils::HextoQString(msgSer);
    std::cout << "Messge Hex: " << message.toStdString()    << std::endl;

    // Sign messgae
    unsigned char signature[64];

    std::cout << "Msg Utf8:   ";
    for(auto m : message.toUtf8())
        std::cout << std::hex << m;
    std::cout << std::endl;

    auto ke = senderAndPayer.priv_.toHex();
    auto kepub = senderAndPayer.pub_;
    QString priv2 = "3zt58Esp3GDM4LBqmBXpuTJaNT1WGsDNdLmSH8BLK4UsmNEbh6QiuYVHUtHcPmMs9mdRfhwa2f6ygtEgb18k7naq";

    byte pubH[kepub.toHex().size()];
    auto phex = kepub.toHex();
    for(auto i = 0; i < kepub.toHex().size(); i++)
        pubH[i]=phex[i];

    unsigned char msgy[] = {1,0,2,3,235,169,246,15,239,182,111,102,19,98,214,54,202,119,42,4,26,212,65,8,126,250,104,64,185,41,185,184,27,140,126,254,1,128,224,203,106,222,69,186,174,243,230,193,9,202,161,217,114,53,193,87,51,36,47,156,209,12,66,77,75,158,81,113,13,58,233,112,48,172,168,232,218,89,221,44,228,143,231,105,232,139,247,42,93,17,77,98,200,228,11,10,192,55,4,101,42,246,152,109,26,55,226,3,116,165,152,4,249,121,66,15,53,26,251,181,147,125,215,205,116,211,232,120,45,207,251,53,1,2,1,1,24,123,10,32,32,32,32,34,100,97,116,97,34,58,32,34,104,101,108,108,111,34,10,125,10};
    unsigned char msgt[] = "01000203eba9f60fefb66f661362d636ca772a041ad441087efa6840b929b9b81b8c7efe0180e0cb6ade45baaef3e6c109caa1d97235c15733242f9cd10c424d4b9e51710d3ae97030aca8e8da59dd2ce48fe769e88bf72a5d114d62c8e40b0ac03704651d66e1d8a3535fd0d01d11c4c37c6800cd8c0d6530c6defeb959e20b3a854e9801020101187b0a202020202264617461223a202268656c6c6f220a7d0a";
    ed25519_sign(signature, msgt, 322,
                 pubH,
                 privKey);

    std::cout << "Priv key: ";
    std::vector<byte> priv;
    for(auto p : privKey)
        priv.push_back(p);
    std::cout << Utils::HextoQString(priv).toStdString() << std::endl;

    std::cout << "Pub key: ";
    auto pub = senderAndPayer.pub_.toHex();
    std::cout << Utils::HextoQString(pub ).toStdString() << std::endl;

    std::cout << "Signature: " ;
    for(auto i = 0; i < 64; i++)
        std::cout << (unsigned short) signature[i] << ",";

    std::cout << std::endl;





   /* QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main"));
    engine.rootContext()->setContextProperty("Solana", &solana);

    engine.load(url);*/


    testSign();
    return app.exec();
}

void testSign(void)
{

    std::cout << "----------------- TEST SIGN FUNCTION" << std::endl;
    unsigned char public_key[32], private_key[64], seed[32], scalar[32];
    unsigned char other_public_key[32], other_private_key[64];
    unsigned char shared_secret[32], other_shared_secret[32];
    unsigned char signature[64];

    clock_t start;
    clock_t end;
    int i;

    std::cout << "Ejemplo" << std::endl;

    unsigned char message[] = "01000203eba9f60fefb66f661362d636ca772a041ad441087efa6840b929b9b81b8c7efe0180e0cb6ade45baaef3e6c109caa1d97235c15733242f9cd10c424d4b9e51710d3ae97030aca8e8da59dd2ce48fe769e88bf72a5d114d62c8e40b0ac037046517a1a79e4359173c172ba3c081ccb83685bfaaeea25eac53bbe3a3f89384b16801020101187b0a202020202264617461223a202268656c6c6f220a7d0a";
    int message_len = strlen((char*) message);


    /* create a random seed, and a keypair out of that seed */
    ed25519_create_seed(seed);
    ed25519_create_keypair(public_key, private_key, seed);

    std::cout << "Priv Key: ";
    for(auto i =0; i < 64; i++)
        std::cout << std::hex << (unsigned short) private_key[i] << " " ;
    std::cout << std::endl;

    std::cout << "Pub Key: ";
    for(auto i =0; i < 32; i++)
        std::cout  << std::hex  << (unsigned short) public_key[i] << " " ;
    std::cout << std::endl;

    /* create signature on the message with the keypair */
    ed25519_sign(signature, message, message_len, public_key, private_key);

    std::cout << "Signature: ";
    for(auto i =0; i < 64; i++)
        std::cout << (unsigned short) signature[i] << " " ;
    std::cout << std::endl;

    /* verify the signature */
    if (ed25519_verify(signature, message, message_len, public_key)) {
        printf("valid signature\n");
    } else {
        printf("invalid signature\n");
    }

    std::cout << "Message 2" << std::endl;

    unsigned char privKey[64] = {149,242,174,114,199,140,66,94,170,200,225,250,87,33,212,105,237,103,49,55,206,146,234,34,247,123,242,95,7,13,238,217,235,169,246,15,239,182,111,102,19,98,214,54,202,119,42,4,26,212,65,8,126,250,104,64,185,41,185,184,27,140,126,254};
    unsigned char pubKey[32] = {235,169,246,15,239,182,111,102,19,98,214,54,202,119,42,4,26,212,65,8,126,250,104,64,185,41,185,184,27,140,126,254};
    unsigned char signature2[64] = {0};
    std::cout << "Priv Key: ";
    for(auto i =0; i < 64; i++)
        std::cout << std::hex << (unsigned short) privKey[i] << " " ;
    std::cout << std::endl;

    std::cout << "Pub Key: ";
    for(auto i =0; i < 32; i++)
        std::cout  << std::hex  << (unsigned short) pubKey[i] << " " ;
    std::cout << std::endl;



    unsigned char message2[] = "01000203eba9f60fefb66f661362d636ca772a041ad441087efa6840b929b9b81b8c7efe0180e0cb6ade45baaef3e6c109caa1d97235c15733242f9cd10c424d4b9e51710d3ae97030aca8e8da59dd2ce48fe769e88bf72a5d114d62c8e40b0ac037046517a1a79e4359173c172ba3c081ccb83685bfaaeea25eac53bbe3a3f89384b16801020101187b0a202020202264617461223a202268656c6c6f220a7d0a";
    int message_len2 = strlen((char*) message2);

    /* create signature on the message with the keypair */
    ed25519_sign(signature2, message2, message_len2, public_key, private_key);

    std::cout << "Signature: ";
    for(auto i =0; i < 64; i++)
        std::cout << (unsigned short) signature2[i] << " " ;
    std::cout << std::endl;

    /* verify the signature */
    if (ed25519_verify(signature2, message2, message_len2, public_key)) {
        printf("valid signature\n");
    } else {
        printf("invalid signature\n");
    }

    std::cout << "Message 3" << std::endl;
    unsigned char message3[] = {1,0,2,3,235,169,246,15,239,182,111,102,19,98,214,54,202,119,42,4,26,212,65,8,126,250,104,64,185,41,185,184,27,140,126,254,1,128,224,203,106,222,69,186,174,243,230,193,9,202,161,217,114,53,193,87,51,36,47,156,209,12,66,77,75,158,81,113,13,58,233,112,48,172,168,232,218,89,221,44,228,143,231,105,232,139,247,42,93,17,77,98,200,228,11,10,192,55,4,101,23,161,167,158,67,89,23,60,23,43,163,192,129,204,184,54,133,191,170,238,162,94,172,83,187,227,163,248,147,132,177,104,1,2,1,1,24,123,10,32,32,32,32,34,100,97,116,97,34,58,32,34,104,101,108,108,111,34,10,125,10};
    int message_len3 = strlen((char*) message3);
    unsigned char signature3[64] = {0};
    /* create signature on the message with the keypair */
    ed25519_sign(signature3, message3, message_len3, public_key, private_key);

    std::cout << "Signature: ";
    for(auto i =0; i < 64; i++)
        std::cout << (unsigned short) signature3[i] << " " ;
    std::cout << std::endl;

    /* verify the signature */
    if (ed25519_verify(signature3, message3, message_len3, public_key)) {
        printf("valid signature\n");
    } else {
        printf("invalid signature\n");
    }

}