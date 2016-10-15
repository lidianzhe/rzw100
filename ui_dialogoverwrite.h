/********************************************************************************
** Form generated from reading UI file 'dialogoverwrite.ui'
**
** Created: Sat Oct 15 14:54:57 2016
**      by: Qt User Interface Compiler version 4.8.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_DIALOGOVERWRITE_H
#define UI_DIALOGOVERWRITE_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QDialog>
#include <QtGui/QDialogButtonBox>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>

QT_BEGIN_NAMESPACE

class Ui_DialogOverwrite
{
public:
    QDialogButtonBox *buttonBox;
    QLabel *label;

    void setupUi(QDialog *DialogOverwrite)
    {
        if (DialogOverwrite->objectName().isEmpty())
            DialogOverwrite->setObjectName(QString::fromUtf8("DialogOverwrite"));
        DialogOverwrite->resize(400, 122);
        buttonBox = new QDialogButtonBox(DialogOverwrite);
        buttonBox->setObjectName(QString::fromUtf8("buttonBox"));
        buttonBox->setGeometry(QRect(30, 80, 341, 32));
        buttonBox->setOrientation(Qt::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::Cancel|QDialogButtonBox::Ok);
        label = new QLabel(DialogOverwrite);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(30, 20, 331, 51));
        QFont font;
        font.setPointSize(12);
        font.setBold(true);
        font.setItalic(false);
        font.setWeight(75);
        label->setFont(font);

        retranslateUi(DialogOverwrite);
        QObject::connect(buttonBox, SIGNAL(accepted()), DialogOverwrite, SLOT(accept()));
        QObject::connect(buttonBox, SIGNAL(rejected()), DialogOverwrite, SLOT(reject()));

        QMetaObject::connectSlotsByName(DialogOverwrite);
    } // setupUi

    void retranslateUi(QDialog *DialogOverwrite)
    {
        DialogOverwrite->setWindowTitle(QApplication::translate("DialogOverwrite", "Dialog", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("DialogOverwrite", "Do you agree to overwrite enrolled db?", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class DialogOverwrite: public Ui_DialogOverwrite {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DIALOGOVERWRITE_H
