QT += qml quick multimedia

include(deps/QmlVlc/QmlVlc.pri)

INCLUDEPATH += deps

SOURCES += main.cpp

RESOURCES += main.qrc

OTHER_FILES += \
    skin/basic_2.qml \
    skin/pause.png \
    skin/play.png

CONFIG += c++11
