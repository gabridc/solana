#ifndef SOLANA_RPC_H
#define SOLANA_RPC_H

#include <QJsonDocument>
#include <QJsonArray>
#include <QJsonValue>
#include <QJsonObject>
#include <QJsonParseError>
#include <QByteArray>
#include <unordered_set>
#include <vector>

using byte = unsigned char;

class KeyTxn
{
public:
    KeyTxn(const QString pubkey);
    QJsonObject key;


};

class Utils
{
public:
    static std::vector<unsigned int> Base58toHex(std::string value);
    static std::vector<byte> Base58toHexChar(std::string value);
    static QString HextoQString(std::vector<byte>& value);
    static QByteArray HextoQByteArray(std::vector<byte>& value);
};


class Key // Base-58
{
public:
    Key(void){};
    Key(const QString Key);
    Key(const QString Key, bool isSigner, bool isWritable);
    QString key_;
    bool isSigner_ = false;
    bool isWritable_ = false;

    int operator ==(Key x)
    {
        if(key_==x.key_)
            return 1;
        else
            return 0;
    }

    std::vector<byte> toHex(void) const;
    std::vector<byte> toChar() const;

};

class KeyPair { // Base-58
public:
    KeyPair(void){};
    KeyPair(const Key privKey, const Key pubKey): priv_(privKey), pub_(pubKey){};
    Key pub_;
    Key priv_;

    // Private, Public
    std::tuple<QByteArray,QByteArray> toHex(void) const;
};


class TxnInstruction
{
public:
    TxnInstruction(void){};
    TxnInstruction(const Key sender, const std::vector<Key> recipients, const Key programID, QJsonObject data);

    Key sender_;
    std::vector<Key> recipients_;
    Key programID_;
    uint32_t dataLength_;
    QJsonObject data_;
    QByteArray dataHex_;

};

class Message
{
public:
    Message(const QByteArray blockhash, // HEX
            const KeyPair payer,
            const std::vector<TxnInstruction> instructions);

    // HEADER
    unsigned short nSigners_;
    unsigned short nReadOnly_;
    unsigned short nReadOnlyNoSigners_;
    unsigned short nAccounts_;

    //ACCOUNTS See private section
    void add(Key acct);
    void remove(Key acct);

    //BLOCKHASH
    QByteArray blockhash_; // HEX

    //INSTRUCTIONS
    std::vector<TxnInstruction> instructions_;
    

    // GENERAL
    uint32_t length_;
    std::vector<byte> serialize(void);
    inline  std::vector<byte> getMsg(void) const {return msgHex_;};


private:
    // ACCOUNTS
    std::vector<Key> accounts_; // Only allows uniques values

    // GENERAL
    // Contiene  mensaje en formato HEX pero el valor almacenado corresponde con su representación en decimal
    // es decir, si se desea guardar el valor 0xAA el vector msgHex contendra el entero 170
    std::vector<byte> msgHex_;
    KeyPair payer_;

    inline void toUniques(void) {
        auto ip = std::unique(accounts_.begin(), accounts_.end());
        accounts_.resize(std::distance(accounts_.begin(), ip));
    }





};



class SolanaRPC : public QObject
{
Q_OBJECT

public:
    explicit SolanaRPC(QObject *parent = nullptr){};
    void getBalance(const QString pubkey) const;
    void sendHello(const QString privKey, const QString pubkey) const;
    QString getLatestBlockhash(void) const;
    void createAccount(const QString pubkey) const;

};



#endif