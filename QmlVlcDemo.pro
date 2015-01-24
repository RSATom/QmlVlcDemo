QT += qml quick multimedia

include(deps/QmlVlc/QmlVlc.pri)

INCLUDEPATH += deps
INCLUDEPATH += deps/libvlc-sdk/include
win32 {
    LIBS += $$PWD/deps/libvlc-sdk/lib/msvc/libvlc.lib
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
