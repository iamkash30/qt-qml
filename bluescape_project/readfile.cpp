#include "readfile.h"

ReadFile::ReadFile(QObject *parent) : QObject(parent) {
  time_t t;
  srand(static_cast<unsigned>(time(&t)));

  QFile file(":/samplewords/sampleWords-2.txt");
  QTextStream in(&file);
  bool status = file.open(QIODevice::ReadOnly | QIODevice::Text);
  if (true == status) {
    qDebug() << "Opened";
    while (!in.atEnd()) {
      dictionary.push_back(in.readLine());
    }
    file.close();
  } else {
    qDebug() << "Not Opened: " << file.errorString();
  }
  qDebug() << "Number of lines: " << dictionary.size();
}

void ReadFile::readWordFromFile() {
  int pos = generateRandomlocationBetween(0, dictionary.size());
  m_display = dictionary.at(pos);
}

void ReadFile::updateDisplay(bool reset) {}

QString ReadFile::display() { return m_display; }

void ReadFile::setDisplay(QString value) {}

int ReadFile::generateRandomlocationBetween(int start, int end) {
  int diff = end - start;
  return ((rand() % diff) + start);
}
