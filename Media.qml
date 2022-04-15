import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.0



Item {
    id: mediaPlayerScreen    

    Rectangle{
        id: mediaContainer
        width: 1085
        height: 456
        x:420
        y:134
        color: "transparent"
        border.color: "transparent"
        visible: false

        Image {
            id: mediaArt
            source: "images/media_art.png"
            anchors.left:  parent.left
            anchors.top:  parent.top
            anchors.topMargin: 160
            anchors.leftMargin: 480
        }
        Image {
            id: mediaArtReflection
            source: "images/media_art.png"
            anchors.left:  parent.left
            anchors.top:  parent.top
            anchors.topMargin: 292
            anchors.leftMargin: 480
            opacity: 0.2
            transform: Rotation { origin.x: mediaArtReflection.width * 0.5; origin.y: mediaArtReflection.height * 0.5; axis { x: 0; y: 0; z: 1 } angle: 180}
            OpacityMask {
                        source: mask
                        maskSource: mediaArtReflection
                    }

                    LinearGradient {
                        id: mask
                        anchors.fill: parent
                        gradient: Gradient {
                            GradientStop { position: 0.4; color: "black"}
                            GradientStop { position: 0.5; color: "transparent" }
                        }
                    }
        }
        Text {
            id: songAlbum
            text: "Sultan"
            color: "white"
            width: 500
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 336
            font { family: urbanist.name; pixelSize: 25; weight: Font.bold}
        }
        Image {
            id: musicTitleDivider
            source: "images/line_divider_music.png"
            anchors.left:  parent.left
            anchors.top: parent.top
            anchors.topMargin: 374
            anchors.leftMargin: 350
        }
        Text {
            id: songTitle
            text: "Haaye Dil mera jaise.."
            color: "white"
            width: 500
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 382
            font { family: urbanist.name; pixelSize: 23; weight: Font.bold}
        }
    }

}
