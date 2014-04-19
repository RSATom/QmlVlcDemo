#include <QtGui/QGuiApplication>
#include <QQuickView>

#include <QmlVlc.h>
#include <QmlVlc/QmlVlcConfig.h>

int main(int argc, char *argv[])
{
    RegisterQmlVlc();
    QmlVlcConfig::setNetworkCacheTime( 10 );
    QmlVlcConfig::enableAdjustFilter( true );
    QmlVlcConfig::enableMarqueeFilter( true );
    QmlVlcConfig::enableLogoFilter( true );
    QmlVlcConfig::enableDebug( true );

    QGuiApplication app(argc, argv);

    QQuickView view;
    view.setClearBeforeRendering( false );
    view.setMinimumSize( QSize( 640, 480 ) );
    view.show();
    view.setResizeMode( QQuickView::SizeRootObjectToView );
    view.setSource( QStringLiteral( "qrc:/skin/basic_2.qml" ) );

    return app.exec();
}
