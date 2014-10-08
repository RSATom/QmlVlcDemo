QT += qml quick multimedia

include(lib/QmlVlc/QmlVlc.pri)

INCLUDEPATH += lib
INCLUDEPATH += lib/libvlc-sdk/include
win32 {
    LIBS += $$PWD/lib/libvlc-sdk/lib/msvc/libvlc.lib
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
