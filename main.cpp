#include <QtGui/QGuiApplication>
#include <QQuickView>

#include <QmlVlc.h>

int main(int argc, char *argv[])
{
    RegisterQmlVlc();

    QGuiApplication app(argc, argv);

    QQuickView view;
    view.show();
    view.setResizeMode( QQuickView::SizeViewToRootObject );
    view.setSource( QStringLiteral( "qrc:/main.qml" ) );

    return app.exec();
}
