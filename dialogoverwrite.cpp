#include "dialogoverwrite.h"
#include "ui_dialogoverwrite.h"

DialogOverwrite::DialogOverwrite(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::DialogOverwrite)
{
    ui->setupUi(this);
}

DialogOverwrite::~DialogOverwrite()
{
    delete ui;
}
