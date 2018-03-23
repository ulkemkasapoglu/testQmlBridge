#include "FileHelper.h"


void FileHelper::writeFile(const QString &text) {
QFile file("/Users/ulkem/Desktop/FirstProject.txt");
if (!file.open(QIODevice::WriteOnly)) return;
QTextStream out(&file);
out << text;
file.close();
}

QString FileHelper::readFile() {
    QFile file("/Users/ulkem/Desktop/FirstProject.txt");
    if (!file.open(QIODevice::ReadOnly)) return "";
    QTextStream in(&file);
    QString temp = in.readAll();
    file.close();
    return temp;
}
