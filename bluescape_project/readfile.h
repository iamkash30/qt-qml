#pragma once

#include <QDebug>
#include <QElapsedTimer>
#include <QFile>
#include <QObject>
#include <QString>
#include <QTimer>
#include <QVariant>
#include <QVector>

class ReadFile : public QObject {
  Q_OBJECT

  // clang-format off
  Q_PROPERTY(QString display READ display WRITE setDisplay NOTIFY displayChanged)
  // clang-format off

public:
  explicit ReadFile(QObject *parent = nullptr);

signals:
  void buttonCLicked();
  void displayChanged();

public slots:
  void readWordFromFile();

public:
  QString m_display;
  double m_best;
  bool m_fastest;

  void updateDisplay(bool reset = false);
  QString display();
  void setDisplay(QString value);
  QVector<QString> dictionary;
  int generateRandomlocationBetween(int start, int end);
};
