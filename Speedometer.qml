import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.14

Item {
    id: speedometer
    DataSource{
        id: dataSource
    }

    Image {
        id: speedoGauge
        source: "images/SpeedoGauge.png"
        visible: true
        x:188
        y:155
        scale: dataSource.gaugeScale
        opacity: dataSource.gaugeOpacity
        Rectangle{
            id: speedoPointerContainer
            anchors.fill: parent
            color: "transparent"
            border.color: "transparent"
            transform: Rotation { origin.x: speedoPointerContainer.width * 0.5; origin.y: speedoPointerContainer.height * 0.5; axis { x: 0; y: 0; z: 1 } angle: dataSource.speedoangle}
            Image {
                id: speedoPointer
                source: "images/Pointer.png"
                visible: true
                anchors.top: speedoPointerContainer.top
                anchors.topMargin: 72
                anchors.horizontalCenter: speedoPointerContainer.horizontalCenter
                transform: Rotation { origin.x: speedoPointer.width * 0.5; origin.y: speedoPointer.height * 0.5; axis { x: 0; y: 0; z: 1 } angle: 180}
            }
        }
        Text {
            id: digitlSpeedo
            x: 385
            y: 365
            text: Math.round(dataSource.speedovalue)
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 210
            font.italic: true
            font { family: pirulen.name; pixelSize: 35}
        }
        Text {
            id: digitlSpeedoUnit
            x: 190
            y: 300
            text: "KMPH"
            color: "white"
            width: 100
            font.italic: true
            font { family: pirulen.name; pixelSize: 20}
        }
        Text { id: speedoChaplet_0; x: 98; y: 345; text: "0"; color: "white"; width: 50; visible: dataSource.chaplet_0; font.italic: true; font { family: pirulen.name; pixelSize: 17} }
        Text { id: speedoChaplet_20; x: 57; y: 287; text: "20"; color: "white"; width: 50; visible: dataSource.chaplet_1; font.italic: true; font { family: pirulen.name; pixelSize: 17} }
        Text { id: speedoChaplet_40; x: 38; y: 223; text: "40"; color: "white"; width: 50; visible: dataSource.chaplet_2; font.italic: true; font { family: pirulen.name; pixelSize: 17} }
        Text { id: speedoChaplet_60; x: 52; y: 155; text: "60"; color: "white"; width: 50; visible: dataSource.chaplet_3; font.italic: true; font { family: pirulen.name; pixelSize: 17} }
        Text { id: speedoChaplet_80; x: 88; y: 97; text: "80"; color: "white"; width: 50; visible: dataSource.chaplet_4; font.italic: true; font { family: pirulen.name; pixelSize: 17} }
        Text { id: speedoChaplet_100; x: 148; y: 61; text: "100"; color: "white"; width: 50; visible: dataSource.chaplet_5; font.italic: true; font { family: pirulen.name; pixelSize: 17} }
        Text { id: speedoChaplet_120; x: 210; y: 44; text: "120"; color: "white"; width: 50; visible: dataSource.chaplet_6; font.italic: true; font { family: pirulen.name; pixelSize: 17} }
        Text { id: speedoChaplet_140; x: 275; y: 61; text: "140"; color: "white"; width: 50; visible: dataSource.chaplet_7; font.italic: true; font { family: pirulen.name; pixelSize: 17} }
        Text { id: speedoChaplet_160; x: 335; y: 97; text: "160"; color: "white"; width: 50; visible: dataSource.chaplet_8; font.italic: true; font { family: pirulen.name; pixelSize: 17} }
        Text { id: speedoChaplet_180; x: 371; y: 155; text: "180"; color: "white"; width: 50; visible: dataSource.chaplet_9; font.italic: true; font { family: pirulen.name; pixelSize: 17} }
        Text { id: speedoChaplet_200; x: 381; y: 223; text: "200"; color: "white"; width: 50; visible: dataSource.chaplet_10; font.italic: true; font { family: pirulen.name; pixelSize: 17} }
        Text { id: speedoChaplet_220; x: 369; y: 287; text: "220"; color: "white"; width: 50; visible: dataSource.chaplet_11; font.italic: true; font { family: pirulen.name; pixelSize: 17} }
        Text { id: speedoChaplet_240; x: 331; y: 345; text: "240"; color: "white"; width: 50; visible: dataSource.chaplet_12; font.italic: true; font { family: pirulen.name; pixelSize: 17} }
    }

}
