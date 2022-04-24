#include "solanaRpc.h"
#include "Base58.h"
#include <iostream>
#include <QtNetwork>
#include <Quicksort.h>

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

Key::Key(const QString k)
{
    key_ = k;
}

Key::Key(const QString k, bool isSigner, bool isWritable)
{
    key_ = k;
    isSigner_ = isSigner;
    isWritable_ = isWritable;
}

std::vector<byte> Key::toHex() const
{
    //TODO: Base-58 converter to Hex

    int len = key_.toStdString().length();
    //byte result[len * 137 / 100];

    byte result[32]; // tamaño en hexadecimal 32 bytes. En representación hexadecimal 0x
    std::vector<byte> decimal; // 32 bytes pero valores en su representación decimal;

    //std::cout << "key Base-58: " << key_.toStdString() << " " << len << std::endl;

    std::string encoded = key_.toStdString();
    auto l = DecodeBase58(encoded, len, result);

    // Representation 0x en DECIMAL. Ejemplo: 0xAA se transforma a su representacion decimal 170
    for(auto r : result)
        decimal.push_back((unsigned int)r);

    /*for(auto r : decimal)
        printf("%02x", r);
    printf("\n");*/

    return decimal;
}

std::vector<byte> Key::toChar() const
{
    //TODO: Base-58 converter to Hex

    int len = key_.toStdString().length();
    //byte result[len * 137 / 100];

    byte result[32]; // tamaño en hexadecimal 32 bytes. En representación hexadecimal 0x
    std::vector<byte> chars; // 32 bytes pero valores en su representación char;

    std::cout << "key Base-58: " << key_.toStdString() << " " << len << std::endl;

    std::string encoded = key_.toStdString();
    auto l = DecodeBase58(encoded, len, result);

    // Representation 0x en DECIMAL. Ejemplo: 0xAA se transforma a su representacion decimal 170
    for(auto r : result)
        chars.push_back((byte)r);

    /*for(auto r : decimal)
        printf("%02x", r);
    printf("\n");*/

    return chars;
}


TxnInstruction::TxnInstruction(const Key sender, const std::vector<Key> recipient, const Key programID, QJsonObject data)
{

    sender_ = sender;
    recipients_ = recipient;
    programID_ = programID;
    data_ = data;

    dataHex_ = QJsonDocument(data_).toJson();

    dataLength_ = dataHex_.size();
}

/*
 * Txn Serialized format:
 *      programID       [u8]
 *      keysCount       [u8]
 *      keys            Nx[64]
 *      dataLength      [u8]
 *      data            Nx[u8]
 */


Message::Message(const QByteArray blockhash, // HEX
            const KeyPair payer,
            const std::vector<TxnInstruction> instructions)
{

    std::cout << "CONSTRUCT MESSAGE" << std::endl;
    nAccounts_ = 0;
    std::cout << nAccounts_ << std::endl;
    nReadOnly_ = 0;
    nReadOnlyNoSigners_ = 0;
    nSigners_ = 0;
    blockhash_ = blockhash;
    payer_ = payer;
    accounts_.push_back(payer.pub_);

    instructions_ = instructions;
    for(auto i : instructions_)
    {
        accounts_.push_back(i.programID_);
        for(auto i : instructions_)
        {
            for(auto r : i.recipients_)
                accounts_.push_back(r);
        }
    }

    // Remove duplicated accounts
    toUniques();
    nAccounts_ = accounts_.size();

    // Se ordenan primero las claves que son signer de la txn
    Quicksort<std::vector<Key>> quick(accounts_);

    auto accountsSorted = quick.sort(0, accounts_.size() -1 );
    accounts_ = accountsSorted;

    for(auto q : accounts_)
        std::cout << q.key_.toStdString() << std::endl;

    for(auto a : accounts_)
    {
        if(a.isSigner_)
            nSigners_++;
        if(a.isWritable_ == false)
            nReadOnly_++;
        if(a.isSigner_ == false && a.isWritable_ == false)
            nReadOnlyNoSigners_++;
    }
    std::cout << "MESSAGE CONSTRUCTED" << std::endl;


}
#include <sstream>
std::vector<byte> Message::serialize(void)
{
    msgHex_.push_back(nSigners_);
    msgHex_.push_back(nReadOnly_);
    msgHex_.push_back(nReadOnlyNoSigners_);
    msgHex_.push_back(nAccounts_);

    for(auto acnt : accounts_)
    {
        auto accnHex = acnt.toHex();
        for(auto a : accnHex)
            msgHex_.push_back(a);

    }

    std::cout << "Blockhash: " << blockhash_.toStdString()  << std::endl;
    //auto blockHashHex = Utils::Base58toHex(blockhash_.toStdString() );
    auto blockHasHexChar = Utils::Base58toHexChar(blockhash_.toStdString());

    for(auto b : blockHasHexChar)
        msgHex_.push_back(b);

    for(auto in : instructions_)
    {
        // Payer index
        auto it = std::find(accounts_.begin(), accounts_.end(), payer_.pub_);
        msgHex_.push_back(std::distance(accounts_.begin(), it) + 1);

        // ProgramID index
        it = std::find(accounts_.begin(), accounts_.end(), in.programID_);
        msgHex_.push_back(std::distance(accounts_.begin(), it) + 1);

        // Recipients number
        msgHex_.push_back(in.recipients_.size());

        // Recipients index
        for(auto r : in.recipients_)
        {
            it = std::find(accounts_.begin(), accounts_.end(), r);
            if(it != accounts_.end())
                msgHex_.push_back(std::distance(accounts_.begin(), it) + 1);
        }

        std::cout << "DATA: " << QJsonDocument(in.data_).toJson().toStdString() << std::endl;
        std::cout << "DATA Size: " << in.dataHex_.size() << std::endl;
        msgHex_.push_back( in.dataHex_.size());
        for(auto d :  in.dataHex_)
        {
            msgHex_.push_back((unsigned int) d);
        }

    }
    return msgHex_;

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

std::vector<unsigned int> Utils::Base58toHex(std::string value)
{
    //TODO: Base-58 converter to Hex

    int len = value.length();
    //byte result[len * 137 / 100];

    byte result[32]; // tamaño en hexadecimal 32 bytes. En representación hexadecimal 0x
    std::vector<unsigned int> decimal; // 32 bytes pero valores en su representación decimal;

    std::cout << "Base-58: " << value << " " << len << std::endl;

    std::string encoded = value;
    auto l = DecodeBase58(encoded, len, result);

    // Representation 0x en DECIMAL. Ejemplo: 0xAA se transforma a su representacion decimal 170
    for(auto r : result)
        decimal.push_back((unsigned int)r);

    return decimal;
}

std::vector<byte> Utils::Base58toHexChar(std::string value)
{
    //TODO: Base-58 converter to Hex

    int len = value.length();
    //byte result[len * 137 / 100];

    byte res[32]; // tamaño en hexadecimal 32 bytes. En representación hexadecimal 0x
    std::vector<byte> result; // 32 bytes pero valores en su representación decimal;

    std::cout << "Base-58: " << value << " " << len << std::endl;

    std::string encoded = value;
    auto l = DecodeBase58(encoded, len, res);

    for(auto r : res)
        result.push_back(r);

    return result;
}

QString Utils::HextoQString(std::vector<byte>& value)
{
    QString result;
    for(auto m: value)
    {
        if(m <= 15)
            result += "0";  // añadir caracter cero cuando el numero no necesita la parte alta del byte hexadecimal
        result += QString::number( m, 16 );

    }

    return result;
}

QByteArray Utils::HextoQByteArray(std::vector<byte>& value)
{

    QByteArray array;

    for(auto m: value)
    {
        array.append((char) m);

    }

    return array;
}

/*
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
                       std::vector<Key>{ Key("33WRmCQK4EkbWxYtfrnQiqQNFuSZSFaZ9zQTJV46WxLt")},
                        Key("teQKR3UYBYfoGQyCBhnE8XZx4aKmPMdjoUyxn7iWfeL"),
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

 */
