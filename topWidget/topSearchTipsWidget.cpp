#include "topSearchTipsWidget.h"
#include<QJsonDocument>
#include<QJsonObject>
#include<QJsonArray>
#include<QEventLoop>
#include<QLineEdit>
#include<QDebug>
topSearchTipsWidget::topSearchTipsWidget(QWidget*p):QListWidget(p)
{
    m_manger=new QNetworkAccessManager(this);

    setMouseTracking(true);
    setStyleSheet("QListWidget{background:white;border:1px solid rgb(214,214,214);}"
                  "QListWidget::item{color:rgb(102,102,102);height:30;}");
    setFrameShadow(QFrame::Plain);//设置平的样式
    setFrameShape(QFrame::NoFrame);//设置无边样式
    setFocusPolicy(Qt::NoFocus);
    setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);//水平scrollbar禁用
    setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);//垂直scrollbar禁用
    setSelectionBehavior ( QAbstractItemView::SelectRows); //设置选择行为，以行为单位
    setSelectionMode ( QAbstractItemView::NoSelection);//单选
    prerow=-1;
}

void topSearchTipsWidget::mouseMoveEvent(QMouseEvent*e)
{
    QListWidget::mouseMoveEvent(e);
     QListWidgetItem *listitem=this->itemAt(this->mapFromGlobal(QCursor::pos()));
        if(listitem==Q_NULLPTR)
        {
            for(int row=0;row<this->count();row++)
            {
                this->item(row)->setBackgroundColor(Qt::transparent);
            }
        }
        else
        {
            //上一次光标选中的行item背景设置恢复
            QListWidgetItem *plistitem=this->item(prerow);
            if(plistitem!=Q_NULLPTR)
            {
                plistitem->setBackgroundColor(Qt::transparent);
            }
            //设置光标选中背景
            listitem->setBackgroundColor(QColor(244,244,244));
            prerow=this->row(listitem);
        }

}

void topSearchTipsWidget::leaveEvent(QEvent *e)
{
    QListWidget::leaveEvent(e);

    QListWidgetItem *plistitem=this->item(prerow);
    if(plistitem!=Q_NULLPTR)
    {
        plistitem->setBackgroundColor(Qt::transparent);
        plistitem->setTextColor(QColor(102,102,102));
    }
}
void topSearchTipsWidget::focusInEvent(QFocusEvent *e)
{
   QListWidget::focusInEvent(e);
}
void topSearchTipsWidget::slot_textchanged(QString str)
{
    //清空文本
    this->clear();
    int count=this->count();
    //删除listwidget中i所在项
    for(int i=0;i<count;i++)
    {
       QListWidgetItem *item= this->takeItem(i);
       delete item;
    }
    //qt网络编程
    QNetworkRequest request;
    request.setUrl(QUrl("http://i.y.qq.com/s.plcloud/fcgi-bin/smartbox_new.fcg?key="+str+"&utf8=1&is_json=1"));
    request.setRawHeader("Accept","*/*");
    request.setRawHeader("Accept-Language","zh-CN");
    request.setRawHeader("User-Agent","Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)");
    request.setRawHeader("Host","i.y.qq.com");
    request.setRawHeader("Content-Type","application/x-www-form-urlencoded");
    request.setRawHeader("Accept-Encoding","deflate");
    request.setRawHeader("Cookie","qqmusic_fromtag=3; qqmusic_miniversion=57; qqmusic_version=12;");
    QNetworkReply *reply= m_manger->get(request);
    QEventLoop loop;
    connect(reply,SIGNAL(finished()),&loop,SLOT(quit()));
    loop.exec();

    //获取网络数据信息，添加singer-songname到listwidget项
    if(reply->error()==QNetworkReply::NoError)
    {
        QByteArray byt=reply->readAll();
        QJsonDocument doc=QJsonDocument::fromJson(byt);
        QJsonObject obj= doc.object();
        QJsonObject obj1= obj.value("data").toObject();
        QJsonObject obj2= obj1.value("song").toObject();
        QJsonArray arry=obj2.value("itemlist").toArray();
        for(int i=0;i<arry.count();i++)
        {
            QJsonObject obj3=arry.at(i).toObject();
            QString songname=  obj3.value("name").toString();
            QString songsinger=obj3.value("singer").toString();
            this->addItem(new QListWidgetItem(songsinger+"-"+songname));
        }
    }
    reply->deleteLater();
}
