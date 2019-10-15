#include "baseWidget.h"
#include<QStyleOption>
#include<QPainter>

#include"AbsFrameLessAutoSize.h"
#include"mainwindow.h"
#include"Global_ValueGather.h"

baseWidget::baseWidget(QWidget *parent) : QWidget(parent)
{
    setStyleSheet("QWidget{background:transparent;}");

    //窗口部件跟踪鼠标是否生效，默认失效，则必须有鼠标按下才触发事件
    setMouseTracking(true);
}
void baseWidget::paintEvent(QPaintEvent *e)
{
   // QWidget::paintEvent(e);
    QStyleOption opt;
    opt.init(this);
    QPainter p(this);
    style()->drawPrimitive(QStyle::PE_Widget, &opt, &p, this);
}

void baseWidget::mousePressEvent(QMouseEvent *e)
{
    QWidget::mousePressEvent(e);
}

void baseWidget::mouseMoveEvent(QMouseEvent *e)
{
    if(mainwid)
       mainwid->mouseMoveEvent(e);
    QWidget::mouseMoveEvent(e);
}

void baseWidget::mouseReleaseEvent(QMouseEvent *e)
{
    QWidget::mouseReleaseEvent(e);
}
