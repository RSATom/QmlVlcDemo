QT += qml quick multimedia

include(lib/QmlVlc/QmlVlc.pri)

INCLUDEPATH += lib
INCLUDEPATH += lib/vlc-2.1.3/sdk/include
win32 {
    LIBS += $$PWD/lib/vc-libvlc/libvlc.lib
} else {
    LIBS += -lvlc
}


SOURCES += main.cpp

RESOURCES += main.qrc

OTHER_FILES += \
    skin/basic_2.qml \
    skin/pause.png \
    skin/play.png

CONFIG += c++11
