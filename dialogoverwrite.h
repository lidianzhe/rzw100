#ifndef DIALOGOVERWRITE_H
#define DIALOGOVERWRITE_H

#include <QDialog>

namespace Ui {
class DialogOverwrite;
}

class DialogOverwrite : public QDialog
{
    Q_OBJECT
    
public:
    explicit DialogOverwrite(QWidget *parent = 0);
    ~DialogOverwrite();
    
private:
    Ui::DialogOverwrite *ui;
};

#endif // DIALOGOVERWRITE_H
