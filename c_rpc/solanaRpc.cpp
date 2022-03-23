#include "solanaRpc.h"
#include <iostream>
#include <QtNetwork>
/*{
"jsonrpc": "2.0",
"id": 1,
"method": "getBalance",
"params": [
    "Grw8AU3rJEQfXg4XChdR3d14JNiVSZ2qHvbBvqvvVZPs"
]
}*/

/*
 *     {
          "keys": [
            {
              "pubkey": {
                "_bn": "63e8ee43a8583013ba6fef5c09181f26720d0621debe8c57eaf4ed87e704843b"
              },
              "isSigner": true,
              "isWritable": true
            },
            {
              "pubkey": {
                "_bn": "f7fa7a4d4e8dda19a3afbec13a5fb4a540289b869b6a5a46162b7c3e3d9161ab"
              },
              "isSigner": true,
              "isWritable": true
            }
          ],
          "programId": {
            "_bn": "00"
          },
          "data": {
            "type": "Buffer",
            "data": []
          }
      }
 */



KeyTxn::KeyTxn(const QString pubkey)
{
    QJsonObject bn;
    bn.insert("_bn", QJsonValue(pubkey) );

    key.insert("pubkey", bn);
    key.insert("isSigner", QJsonValue(true));
    key.insert("isWritable", QJsonValue(true));
}

Key::Key(const QString pubkey, const QString privKey)
{
    pubKey_ = pubkey;
    privKey_ = privKey;
}
Key::Key(const QString pubkey)
{
    pubKey_ = pubkey;
}


TxnInstruction::TxnInstruction(const Key sender, const Key recipient, const QString programID, const QJsonObject data)
{

    pubkKeySender_ = sender;
    pubKeyRecipient_ = recipient;
    programID_ = programID;
    data_ = data;

    keys.insert(0, KeyTxn(sender.pubKey_).key);
    keys.insert(1, KeyTxn(recipient.pubKey_).key);
    txn.insert("keys", keys);

    QJsonObject pid;
    pid.insert("_bn", QJsonValue(programID) );
    txn.insert("programId", pid);

    txn.insert("data", data);

    std::cout << "TxnInstruction JSON Object: \n" <<  QJsonDocument(txn).toJson().toBase64().toStdString()<< std::endl;
}

/*
 * Txn Serialized format:
 *      programID       [u8]
 *      keysCount       [u8]
 *      keys            Nx[64]
 *      dataLength      [u8]
 *      data            Nx[u8]
 */
QByteArray TxnInstruction::serialize(void)
{
    QByteArray txnInSerialized;

    uint8_t pID = QString::number()programID_
    uint8_t keysCount = keys.size();
    QByteArray keys;

    keys.push_back(pubkKeySender_.pubKey_.toUInt());
    keys.push_back(pubKeyRecipient_.pubKey_.toUInt());


    std::vector<uint8_t> data = {6, 221, 246, 225, 215, 101, 161, //System Program Create Account instruction
            147, 217, 203, 225,  70, 206, 235,
            121, 172,  28, 180, 133, 237,  95,
            91,  55, 145,  58, 140, 245, 133,
            126, 255,   0, 169 };

    uint8_t dataL = data.size(); // BYTES

    std::cout << "PID: " << pID << std::endl << "Key count: " << keysCount << std::endl <<
                "Key1: " << keys[0] << std::endl << "Key2: " << keys[1] << std::endl <<
                "Data Length: " << dataL << std::endl << "Data: ";
                for(auto d : data)
                    std::cout << d;
                std::cout << std::endl;



}

void SolanaRPC::getBalance(const QString pubkey) const
{
    QJsonObject json;

    json.insert("jsonrpc", QJsonValue("2.0"));
    json.insert("id", QJsonValue("1"));
    json.insert("method", QJsonValue("getBalance"));
    QJsonArray params;
    params.insert(0, QJsonValue(pubkey));
    json.insert("params", params);

    std::cout << "JSON Object: \n" << QJsonDocument(json).toJson().toStdString() << std::endl;

    QUrl url("https://api.devnet.solana.com");
    QNetworkRequest request(url);

    request.setHeader(QNetworkRequest::ContentTypeHeader, "application/json");
    QNetworkAccessManager *manager = new QNetworkAccessManager();

    QNetworkReply *reply = manager->post(request, QJsonDocument(json).toJson());

    while (!reply->isFinished())
    {
        qApp->processEvents();
    }

    QByteArray response_data = reply->readAll();

    std::cout << "Response: \n" << response_data.toStdString() << std::endl;




}

QString SolanaRPC::getLatestBlockhash(void) const
{
    QJsonObject json;

    json.insert("jsonrpc", QJsonValue("2.0"));
    json.insert("id", QJsonValue("1"));
    json.insert("method", QJsonValue("getLatestBlockhash"));


    QJsonObject com;
    com.insert("commitment", "processed");

    QJsonArray params;
    params.insert(0, com);
    json.insert("params", params);

    QUrl url("https://api.devnet.solana.com");
    QNetworkRequest request(url);

    request.setHeader(QNetworkRequest::ContentTypeHeader, "application/json");
    QNetworkAccessManager *manager = new QNetworkAccessManager();

    QNetworkReply *reply = manager->post(request, QJsonDocument(json).toJson());

    while (!reply->isFinished())
    {
        qApp->processEvents();
    }

    QByteArray response_data = reply->readAll();

    std::cout << "Response: \n" << response_data.toStdString() << std::endl;

    auto resp = QJsonDocument::fromJson(response_data);

    return resp.object().value("result").toObject().value("value").toObject().value("blockhash").toString();
}
void SolanaRPC::createAccount(const QString pubkey) const
{

    auto blockHash = getLatestBlockhash();
    QJsonObject json;

    json.insert("jsonrpc", QJsonValue("2.0"));
    json.insert("id", QJsonValue("1"));
    json.insert("method", QJsonValue("sendTransaction"));

    QJsonObject data;
    data.insert("type", "Buffer");
    QJsonArray a = {0, 0, 0, 0, // System program
                    96,  77,  22,   0,   0,  0,   0,   0, // Number of lamport to transfer to the new account
                    82,   0,   0,   0,   0,   0,   0,   0, //Size of the account to store data (82 bytes)
                    6, 221, 246, 225, 215, 101, 161, //System Program Create Account instruction
                    147, 217, 203, 225,  70, 206, 235,
                    121, 172,  28, 180, 133, 237,  95,
                    91,  55, 145,  58, 140, 245, 133,
                    126, 255,   0, 169};
    data.insert("data", a);

    TxnInstruction txnInstruction(Key("Grw8AU3rJEQfXg4XChdR3d14JNiVSZ2qHvbBvqvvVZPs"),
                       Key("33WRmCQK4EkbWxYtfrnQiqQNFuSZSFaZ9zQTJV46WxLt"),
                       "teQKR3UYBYfoGQyCBhnE8XZx4aKmPMdjoUyxn7iWfeL",
                       data);


    QJsonArray params;
    params.insert(0, QString(QJsonDocument(txnInstruction.txn).toJson().toBase64()));

    //TODO: TO SIGN PARAMS in ed25519
    json.insert("params", params);

    json.insert("signatures", "signature");
    json.insert("feePayer", "pubkey");
    json.insert("recentBlockhash", "recentBlockhash");



    std::cout << "JSON Object: \n" << QJsonDocument(json).toJson().toStdString() << std::endl;


    QUrl url("https://api.devnet.solana.com");
    QNetworkRequest request(url);

    request.setHeader(QNetworkRequest::ContentTypeHeader, "application/json");
    QNetworkAccessManager *manager = new QNetworkAccessManager();

    QNetworkReply *reply = manager->post(request, QJsonDocument(json).toJson());

    while (!reply->isFinished())
    {
        qApp->processEvents();
    }

    QByteArray response_data = reply->readAll();

    std::cout << "Response: \n" << response_data.toStdString() << std::endl;


}
