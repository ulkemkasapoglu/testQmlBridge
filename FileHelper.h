#ifndef WRITER_H
#define WRITER_H
#include <QObject>
#include <QFile>
#include <QTextStream>


class FileHelper : public QObject {
Q_OBJECT
public:
explicit FileHelper(QObject *parent = 0) : QObject(parent) {}

public slots:
void writeFile(const QString &text);



QString readFile();

};

#endif // WRITER_H
