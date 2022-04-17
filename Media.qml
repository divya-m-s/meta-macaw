import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.14
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
        visible: dataSource.mediaScreenVisible
        opacity: dataSource.mediaPageOpacity
        
        Image {
            id: mediaArt
            cache: false
            source : Qt.resolvedUrl("file:///home/quest/MediaArt/media" + dataSource.imageNumber + ".png")
            anchors.left:  parent.left
            anchors.top:  parent.top
            anchors.topMargin: 160
            anchors.leftMargin: 480
        }
        Image {
            id: mediaArtReflection
            cache: false
            source : Qt.resolvedUrl("file:///home/quest/MediaArt/media" + dataSource.imageNumber + ".png")
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
            text: dataSource.albumName
            color: "white"
            width: 500
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 336
            font { family: urbanist.name; pixelSize: 25}
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
            text: dataSource.albumTitle
            color: "white"
            width: 500
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 382
            font { family: urbanist.name; pixelSize: 23}
        }

        Image {
            id: mediaStatus
            source : "images/Music_Border.png"
            anchors.left:  parent.left
            anchors.top:  parent.top
            anchors.topMargin: 340
            anchors.leftMargin: 670
            Image {
                id: mediaStatusInfo
                source : "images/Music_" + dataSource.mediaStatus + ".png"
                anchors.centerIn: parent
            }
        }
        Image {
            id: mediaStatusReflection
            source : "images/Music_Border.png"
            anchors.left:  parent.left
            anchors.top:  parent.top
            anchors.topMargin: 415
            anchors.leftMargin: 670
            opacity: 0.2
            transform: Rotation { origin.x: mediaStatusReflection.width * 0.5; origin.y: mediaStatusReflection.height * 0.5; axis { x: 0; y: 0; z: 1 } angle: 180}
            Image {
                id: mediaStatusInfoReflection
                source : "images/Music_" + dataSource.mediaStatus + ".png"
                anchors.centerIn: parent
            }
            OpacityMask {
                source: statusmask
                maskSource: mediaStatusReflection
            }

            LinearGradient {
                id: statusmask
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop { position: 0.4; color: "black"}
                    GradientStop { position: 0.5; color: "transparent" }
                }
            }
        }
    }
    
}
