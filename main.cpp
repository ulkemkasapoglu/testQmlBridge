#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQuick>
#include <QObject>
#include <QFile>
#include <QTextStream>
#include <QDebug>
#include "FileHelper.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<FileHelper>("FileHelpers", 1, 0, "FileHelper");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


    return app.exec();
}
