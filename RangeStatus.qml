import QtQuick 2.0

Item {
    id: rangeMainContainer
    Rectangle{
        id: rangeContainer
        x: dataSource.rangeXTransition  //701
        y: dataSource.rangeYTransition  //193
        opacity: dataSource.rangeOpacity
        visible: 1.0 - mapboxglMap.visible
        Text {
            id: rangeDistanceValue
            text: "450"
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignRight
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 10
            font { family: urbanist.name; pixelSize: 28}
        }
        Text {
            id: rangeDistanceUnit
            text: "km"
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignHCenter
            anchors.left:  parent.left
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.leftMargin: 24
            font { family: urbanist.name; pixelSize: 28}
        }
        Image {
            id: rangeDivider
            source: "images/line_divider_trip.png"
            anchors.left:  parent.left
            anchors.top: parent.top
            anchors.topMargin: 48
            anchors.leftMargin: -80
        }
        Text {
            id: rangeInfo
            text: "Range"
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignLeft
            anchors.left:  parent.left
            anchors.top: parent.top
            anchors.topMargin: 52
            anchors.leftMargin: 4
            font { family: urbanist.name; pixelSize: 28}
        }

    }

    Rectangle{
        id: rangeContainerNavigation
        x: 60  //701
        y: 410 //193
        opacity: 1.0
        visible: mapboxglMap.visible
        Text {
            id: rangeDistanceValueNavi
            text: "450"
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignRight
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 10
            font { family: urbanist.name; pixelSize: 28}
        }
        Text {
            id: rangeDistanceUnitNavi
            text: "km"
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignHCenter
            anchors.left:  parent.left
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.leftMargin: 24
            font { family: urbanist.name; pixelSize: 28}
        }
        Image {
            id: rangeDividerNavi
            source: "images/line_divider_trip.png"
            anchors.left:  parent.left
            anchors.top: parent.top
            anchors.topMargin: 48
            anchors.leftMargin: -80
        }
        Text {
            id: rangeInfoNavi
            text: "Range"
            color: "white"
            width: 100
            horizontalAlignment: Text.AlignLeft
            anchors.left:  parent.left
            anchors.top: parent.top
            anchors.topMargin: 52
            anchors.leftMargin: 4
            font { family: urbanist.name; pixelSize: 28}
        }

    }

}
