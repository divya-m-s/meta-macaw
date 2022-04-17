import QtQuick 2.0

Item {

    id: tripMainContainer

    Rectangle{
        id: tripContainerDefault
        x: dataSource.tripXTransition   //1150
        y: dataSource.tripYTransition   //193
        opacity: dataSource.tripOpacity
        visible: 1.0 - mapboxglMap.visible
        Text {
            id: tripDistanceValue
            text: "999"
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignRight
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 10
            font { family: urbanist.name; pixelSize: 30}
        }
        Text {
            id: tripDistanceUnit
            text: "km"
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignHCenter
            anchors.left:  parent.left
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.leftMargin: 27
            font { family: urbanist.name; pixelSize: 30}
        }
        Image {
            id: tripDivider
            source: "images/line_divider_trip.png"
            anchors.left:  parent.left
            anchors.top: parent.top
            anchors.topMargin: 48
            anchors.leftMargin: -80
        }
        Text {
            id: tripInfo
            text: "Trip A"
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignLeft
            anchors.left:  parent.left
            anchors.top: parent.top
            anchors.topMargin: 52
            anchors.leftMargin: 2
            font { family: urbanist.name; pixelSize: 28}
        }

    }

    Rectangle{
        id: tripContainerNavigation
        x: 1760  //1150
        y: 410   //193
        opacity: 1.0
        visible: mapboxglMap.visible
        Text {
            id: tripDistanceValueNavi
            text: "999"
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignRight
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 10
            font { family: urbanist.name; pixelSize: 30}
        }
        Text {
            id: tripDistanceUnitNavi
            text: "km"
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignHCenter
            anchors.left:  parent.left
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.leftMargin: 27
            font { family: urbanist.name; pixelSize: 30}
        }
        Image {
            id: tripDividerNavi
            source: "images/line_divider_trip.png"
            anchors.left:  parent.left
            anchors.top: parent.top
            anchors.topMargin: 48
            anchors.leftMargin: -80
        }
        Text {
            id: tripInfoNavi
            text: "Trip A"
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignLeft
            anchors.left:  parent.left
            anchors.top: parent.top
            anchors.topMargin: 52
            anchors.leftMargin: 2
            font { family: urbanist.name; pixelSize: 28}
        }

    }

}
