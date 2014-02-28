include(lib/libvlc_wrapper/libvlc_wrapper.pri)
include(lib/QmlVlc/QmlVlc.pri)

INCLUDEPATH += lib
INCLUDEPATH += lib/vlc-2.1.3/sdk/include

LIBS += $$PWD/lib/vc-libvlc/libvlc.lib

QT += qml quick

SOURCES += main.cpp

RESOURCES += main.qrc

OTHER_FILES += main.qml

CONFIG += c++11
