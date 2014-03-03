#include <QtGui/QGuiApplication>
#include <QQuickView>

#include <QmlVlc.h>

int main(int argc, char *argv[])
{
    RegisterQmlVlc();

    QGuiApplication app(argc, argv);

    QQuickView view;
    view.setMinimumSize( QSize( 640, 480 ) );
    view.show();
    view.setResizeMode( QQuickView::SizeRootObjectToView );
    view.setSource( QStringLiteral( "qrc:/skin/basic_2.qml" ) );

    return app.exec();
}
