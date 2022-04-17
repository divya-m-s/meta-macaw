import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.14

Item {
    id: powermeter
    DataSource{
        id: dataSource
    }

    Image {
        id: powerGauge
        source: "images/PowerGauge.png"
        visible: true
        x:1268
        y:155
        scale: dataSource.gaugeScale
        opacity: dataSource.gaugeOpacity
        Rectangle{
            id: powerPointerContainer
            anchors.fill: parent
            color: "transparent"
            border.color: "transparent"
            transform: Rotation { origin.x: powerPointerContainer.width * 0.5; origin.y: powerPointerContainer.height * 0.5; axis { x: 0; y: 0; z: 1 } angle: dataSource.powerangle}
            Image {
                id: powerPointer
                source: "images/Pointer.png"
                visible: true
                anchors.top: powerPointerContainer.top
                anchors.topMargin: 72
                anchors.horizontalCenter: powerPointerContainer.horizontalCenter
                transform: Rotation { origin.x: powerPointer.width * 0.5; origin.y: powerPointer.height * 0.5; axis { x: 0; y: 0; z: 1 } angle: 180}
            }
        }
        Text {
            id: digitalPower
            x: 385
            y: 365
            text: Math.round(dataSource.powervalue)
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 210
            font.italic: true
            font { family: pirulen.name; pixelSize: 35; weight: Font.bold}
        }
        Text {
            id: digitalPowerUnit
            x: 210
            y: 300
            text: "KW"
            color: "white"
            width: 100
            font.italic: true
            font { family: pirulen.name; pixelSize: 20; weight: Font.bold}
        }
        Text { id: powerChaplet_m40; x: 98; y: 345; text: "-40"; color: "white"; width: 50; visible: dataSource.chaplet_0; font.italic: true; font { family: pirulen.name; pixelSize: 17; weight: Font.bold} }
        Text { id: powerChaplet_m20; x: 57; y: 287; text: "-20"; color: "white"; width: 50; visible: dataSource.chaplet_1; font.italic: true; font { family: pirulen.name; pixelSize: 17; weight: Font.bold} }
        Text { id: powerChaplet_0; x: 48; y: 223; text: "0"; color: "white"; width: 50; visible: dataSource.chaplet_2; font.italic: true; font { family: pirulen.name; pixelSize: 17; weight: Font.bold} }
        Text { id: powerChaplet_20; x: 52; y: 155; text: "20"; color: "white"; width: 50; visible: dataSource.chaplet_3; font.italic: true; font { family: pirulen.name; pixelSize: 17; weight: Font.bold} }
        Text { id: powerChaplet_40; x: 88; y: 97; text: "40"; color: "white"; width: 50; visible: dataSource.chaplet_4; font.italic: true; font { family: pirulen.name; pixelSize: 17; weight: Font.bold} }
        Text { id: powerChaplet_60; x: 148; y: 61; text: "60"; color: "white"; width: 50; visible: dataSource.chaplet_5; font.italic: true; font { family: pirulen.name; pixelSize: 17; weight: Font.bold} }
        Text { id: powerChaplet_80; x: 210; y: 44; text: "80"; color: "white"; width: 50; visible: dataSource.chaplet_6; font.italic: true; font { family: pirulen.name; pixelSize: 17; weight: Font.bold} }
        Text { id: powerChaplet_100; x: 275; y: 61; text: "100"; color: "white"; width: 50; visible: dataSource.chaplet_7; font.italic: true; font { family: pirulen.name; pixelSize: 17; weight: Font.bold} }
        Text { id: powerChaplet_120; x: 335; y: 97; text: "120"; color: "white"; width: 50; visible: dataSource.chaplet_8; font.italic: true; font { family: pirulen.name; pixelSize: 17; weight: Font.bold} }
        Text { id: powerChaplet_140; x: 371; y: 155; text: "140"; color: "white"; width: 50; visible: dataSource.chaplet_9; font.italic: true; font { family: pirulen.name; pixelSize: 17; weight: Font.bold} }
        Text { id: powerChaplet_160; x: 381; y: 223; text: "160"; color: "white"; width: 50; visible: dataSource.chaplet_10; font.italic: true; font { family: pirulen.name; pixelSize: 17; weight: Font.bold} }
        Text { id: powerChaplet_180; x: 369; y: 287; text: "180"; color: "white"; width: 50; visible: dataSource.chaplet_11; font.italic: true; font { family: pirulen.name; pixelSize: 17; weight: Font.bold} }
        Text { id: powerChaplet_200; x: 331; y: 345; text: "200"; color: "white"; width: 50; visible: dataSource.chaplet_12; font.italic: true; font { family: pirulen.name; pixelSize: 17; weight: Font.bold} }
    }

}
