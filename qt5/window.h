#ifndef WINDOW_H
#define WINDOW_H

#include <QMainWindow>

class Window : public QMainWindow
{
    Q_OBJECT
public:
    explicit Window(QWidget *parent = 0);

Q_SIGNALS:

public Q_SLOTS:
};

#endif // WINDOW_H
