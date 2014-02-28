import QtQuick 2.1
import QtMultimedia 5.0
import QmlVlc 0.1

Rectangle {
    width: 854;
    height: 480;
    color: 'black';
    VlcPlayer {
        id: vlcPlayer;
        mrl: "http://download.blender.org/peach/bigbuckbunny_movies/big_buck_bunny_480p_stereo.avi";
    }
    VlcVideoSurface {
        id: videoOutput;
        source: vlcPlayer;
        anchors.fill: parent;
    }
    MouseArea {
        anchors.fill: videoOutput;
        onClicked: vlcPlayer.togglePause();
    }
}
