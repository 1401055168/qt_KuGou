#ifndef MYTABLEADDWIDGET_H
#define MYTABLEADDWIDGET_H

#include <QObject>
#include <QWidget>
#include"baseWidget.h"
#include"myPushButton.h"
#include<qlabel.h>

//列表歌单为空的添加操作
class myTableAddWidget:public baseWidget
{
    Q_OBJECT
public:
    myTableAddWidget(QWidget*parent=0);
    void init();

    myPushButton *m_add;
    myPushButton *m_addFolder;

private:
    myPushButton *m_labadd;
    myPushButton *m_labaddFolder;

};

#endif // MYTABLEADDWIDGET_H
