#ifndef MIDDLEWIDGETLEFT_H
#define MIDDLEWIDGETLEFT_H

#include <QObject>
#include <QWidget>
#include"baseWidget.h"
#include<QStackedWidget>
#include<QPropertyAnimation>
#include<myPushButton.h>

class mainWindow;
class middleLeftStackWidget0;
class middleLeftStackWidget1;
class middleLeftStackWidget2;
class middleLeftStackWidget3;
class middleLeftStackWidget4;


class middleWidgetLeft : public baseWidget
{
    //动画一个QObject值，定义了一个m_x属性
    Q_OBJECT
    Q_PROPERTY(int m_x READ getValue WRITE animation)



public:
    explicit middleWidgetLeft(QWidget *parent = 0);
    QStackedWidget  *m_stackwid;
    stackButton *m_btn[5];
    middleLeftStackWidget0 *m_Swidget0;
    middleLeftStackWidget1 *m_Swidget1;
    middleLeftStackWidget2 *m_Swidget2;
    middleLeftStackWidget3 *m_Swidget3;
    middleLeftStackWidget4 *m_Swidget4;

    static QColor color;//92 174 219
    static QColor bgcolor;

    void initLayout();
    void initAnimation();
    void setInitMainWindow(mainWindow*);

    int getValue(){return m_x;}
    void animation(int i){m_x=i;update();}
    void setBackgroundtransparent();
    void setBackgroundnormal();
    void setDrawVerticalLine(bool is=true){m_isDrawVerticalLine=is;}

protected:
    void paintEvent(QPaintEvent *);

    void resizeEvent(QResizeEvent*);

private slots:
    void slot_btn();
    void setWidgetOpacity(int);

    void slot_changeButtonSelected(int i);//改变选择框按钮
 //   void slot_animation(QVariant var){m_x=var.toInt();update();}
    void slot_finished(){m_isAnima=false;}
private:
    mainWindow *m_mainWindow;

    QPixmap m_pix;//indicator图片（^）
    int m_index;//stackWidget当前选中目录
    int m_preindex;//选中前一目录
    bool m_isDrawVerticalLine;//middleWidgetleft右边框，一直为真
    bool m_isAnima;//是否处于动画状态
    int m_x;//animation某属性值
    int m_preItem;
    QPropertyAnimation *m_animation;//indicator线条动画
    QPropertyAnimation *m_Widanimation;//stackWidget动画

};


#endif // MIDDLEWIDGETLEFT_H
