QT += qml quick multimedia

include(lib/libvlc_wrapper/libvlc_wrapper.pri)
include(lib/QmlVlc/QmlVlc.pri)

INCLUDEPATH += lib
INCLUDEPATH += lib/vlc-2.1.3/sdk/include

LIBS += $$PWD/lib/vc-libvlc/libvlc.lib

SOURCES += main.cpp

RESOURCES += main.qrc

OTHER_FILES += \
    skin/basic_2.qml \
    skin/pause.png \
    skin/play.png

CONFIG += c++11
