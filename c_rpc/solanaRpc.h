#ifndef SOLANA_RPC_H
#define SOLANA_RPC_H

#include <QJsonDocument>
#include <QJsonArray>
#include <QJsonValue>
#include <QJsonObject>
#include <QJsonParseError>


class KeyTxn
{
public:
    KeyTxn(const QString pubkey);
    QJsonObject key;


};


class Key
{
public:
    Key(void){};
    Key(const QString pubkey, const QString privKey);
    Key(const QString pubkey);
    QString pubKey_;
    QString privKey_;


};


class TxnInstruction
{
public:
    TxnInstruction(const Key sender, const Key recipient, const QString programID, const QJsonObject data);
    QJsonObject txn;
    QJsonArray keys;

    Key pubkKeySender_;
    Key pubKeyRecipient_;
    QString programID_;
    QJsonObject data_;

    QByteArray serialize(void);


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