import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.14
import QtLocation 5.6
import QtQuick.Timeline 1.0
import QtQml 2.2
import QtGraphicalEffects 1.12


Window {
    id: window
    width: 1920
    height: 720
    visible: true
    visibility: "FullScreen"

    FontLoader { id: pirulen; source: "fonts/pirulen.ttf" }
    FontLoader { id: roboto; source: "fonts/Roboto-Regular.ttf" }
    FontLoader { id: urbanist; source: "fonts/Urbanist-Regular.ttf" }
    FontLoader { id: biysk; source: "fonts/Biysk.ttf" }

    DataSource{
        id: dataSource
    }


    Rectangle{
        id: mainContainer
        width: 1920
        height: 720
        visible: true

        Image {
            id: backgroundImage
            source: "images/BG.png"
        }
        Image {
            id: referenceImage
            source: "images/AnalogDialMusic.png"
            visible: false
            opacity: 0.2
        }

        //Map
        Map {
            id: mapboxglMap
            width: 1085
            height: 456
            x:420
            y:134
            plugin: mapPlugin
            //center: QtPositioning.coordinate(8.558961, 76.882808)
             //center: QtPositioning.coordinate(60.170448, 24.942046)
            zoomLevel: 15
            copyrightsVisible: false
            visible: false

            MapCircle {
                property variant startCoordinate: QtPositioning.coordinate(8.558961, 76.882808)
                    center :startCoordinate
                    radius: 36.0
                    border.width: 3
                    //color: '#33D9D3'
                    opacity: 0.8
                    RadialGradient {
                            anchors.fill: parent
                            gradient: Gradient {
                                GradientStop {
                                  position: 0.0
                                  color: "#FF33D9D3"
                                }
                                GradientStop {
                                  position: 0.3
                                  color: "#0533D9D9"
                                }
                                GradientStop {
                                  position: 1.0
                                  color: "transparent"
                                }
                              }
                        }
//                    Image {
//                        id: mapPointer
//                        source: "images/current_location_icon.png"
//                        anchors.fill: parent
//                    }
                }

        }
        Plugin {
            id: mapPlugin
            name: "mapboxgl" // "mapboxgl", "esri", ...
            // specify plugin parameters if necessary
             PluginParameter {
                 name: "mapboxgl.access_token"
                 //value: "pk.eyJ1Ijoiamluc2hpdGgiLCJhIjoiY2t5NDRrdmdhMDhpYjJxcW40ZDZwMTNxayJ9.Mwu-QOz2LV_mo2eZv-bzxQ"
                 value: "pk.eyJ1Ijoic3ZpZ25lc2giLCJhIjoiY2t3YWZ6dXYyMXMzNjJ2cmg4M2d6Nm80dSJ9.fttf__uZIUdYxD59aRIbHA"
             }
             PluginParameter {
                 name: "mapboxgl.mapping.use_fbo"
                 value: true
             }

             PluginParameter {
                 name: "mapboxgl.mapping.items.insert_before"
                 value: "aerialway"
             }
             PluginParameter {
                    name: "mapboxgl.mapping.additional_style_urls"
                    //value: "mapbox://styles/mapbox/dark-v10"
                    //value: "mapbox://styles/mapbox/navigation-night-v1"
                    //value: "mapbox://styles/mapbox/streets-v11"
                    value: "mapbox://styles/svignesh/ckzp7whcp001514oe3omh0w20"
             }

        }
        //Map

        Rectangle{
            id: defaultCentralScreen
            width: 1085
            height: 456
            x:420
            y:134
            color: "transparent"
            border.color: "transparent"
            visible: true
            Image {
                id: macawBirdLogo
                source: "images/macaw.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                scale: dataSource.macawBirdLogoScale
                opacity: dataSource.macawBirdLogoOpacity
            }
        }

        Media{
            id: mediaPlayerScreen
        }

        Image {
            id: mapOverlayImage
            source: "images/Map_Overlay.png"
            visible: false
            transform: Scale { origin.x: width*0.5; origin.y: height*0.5; xScale: 0.8}
        }

        //Time
        Text {
            id: currentTime
            x: 933
            y: 54
            width: 600
            color: "white"
            font {family: roboto.name; pixelSize: 22; weight: Font.bold}
            //text: "" + new Date().toLocaleTimeString(Qt.locale(), "hh:mm")
        }
        Timer {
            id: currentTimeUpdateTimer
            interval: 500
            repeat: true
            running: true
            onTriggered:
            {
                currentTime.text =  "" + new Date().toLocaleTimeString(Qt.locale(), "hh:mm")
            }
        }
        //Time

        //Telltales
        Image { id: turnLeftIndicator; width: 30; height: 30; x: 430; y: 50; source: "images/left.png"; visible: dataSource.leftIndicator; }
        Image { id: airBag; width: 30; height: 30; x: 510; y: 52; source: "images/airbag.png"; visible: dataSource.airbagInd }
        Image { id: fogLight; width: 30; height: 30; x: 600; y: 52; source: "images/lightfog.png"; visible: dataSource.fogLightInd }
        Image { id: handBrake; width: 30; height: 30; x: 670; y: 52; source: "images/handbrake.png"; visible: dataSource.handBrakeInd }
        Image { id: headLight; width: 30; height: 30; x: 740; y: 52; source: "images/headlight.png"; visible: dataSource.headLightInd }
        Image { id: seatBelt; width: 30; height: 30; x: 820; y: 52; source: "images/seatbelt.png"; visible: dataSource.seatBeltInd }
        Image { id: doorOpen; width: 30; height: 30; x: 1078; y: 52; source: "images/dooropen.png"; visible: dataSource.doorOpenInd }
        Image { id: abs; width: 30; height: 30; x: 1160; y: 52; source: "images/abs.png"; visible: dataSource.absInd }
        Image { id: lowPower; width: 30; height: 30; x: 1234; y: 52; source: "images/lowpower.png"; visible: dataSource.lowPowerInd }
        Image { id: highBeam; width: 30; height: 30; x: 1312; y: 52; source: "images/highbeam.png"; visible: dataSource.highBeamInd }
        Image { id: lowBeam; width: 30; height: 30; x: 1312; y: 52; source: "images/lowbeam.png"; visible: false }
        Image { id: fog; width: 30; height: 30; x: 1385; y: 52; source: "images/fog.png"; visible: dataSource.fogInd }
        Image { id: turnRightIndicator; width: 30; height: 30; x: 1454; y: 50; source: "images/right.png"; visible: dataSource.rightIndicator }
        //Telltales

        //SpeedLimit
        Rectangle{
            id: speedLimitContainer
            x: 213
            y: 80
            width: 64
            height: 64
            color: "transparent"
            border.color: "transparent"
            scale: 0.85
            Image {
                id: speedLimitBG
                source: "images/SpeedLimit_Icon.png"
                width: 64
                height: 64
                Text {
                    id: speedLimitValue
                    text: "60"
                    color: "green"
                    width: 50
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 15
                    font { family: roboto.name; pixelSize: 30; weight: Font.bold}
                }
            }

        }
        //SpeedLimit

        //Gear
        Rectangle{
            id: gearContainer
            x: 915
            y: dataSource.gearYTransition
            width: 84
            height: 84
            color: "transparent"
            border.color: "transparent"
            opacity: dataSource.gearOpacity
            Image {
                id: gearBorder
                source: "images/Gear_Box.png"
                width: 84
                height: 84
                Text {
                    id: gearValue
                    text: "P"
                    color: "white"
                    width: 100
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    font { family: roboto.name; pixelSize: 51; weight: Font.bold}
                }
            }

        }
        //Gear

        //TripStatus
        Rectangle{
            id: tripContainer
            x: dataSource.tripXTransition   //1150
            y: dataSource.tripYTransition   //193
            opacity: dataSource.tripOpacity
            Text {
                id: tripDistanceValue
                text: "999"
                color: "white"
                width: 100
                horizontalAlignment: Text.AlignRight
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 10
                font { family: urbanist.name; pixelSize: 30; weight: Font.bold}
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
                font { family: urbanist.name; pixelSize: 30; weight: Font.bold}
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
                font { family: urbanist.name; pixelSize: 28; weight: Font.bold}
            }

        }
        //TripStatus

        //RangeStatus
        Rectangle{
            id: rangeContainer
            x: dataSource.rangeXTransition  //701
            y: dataSource.rangeYTransition  //193
            opacity: dataSource.rangeOpacity
            Text {
                id: rangeDistanceValue
                text: "450"
                color: "white"
                width: 100
                horizontalAlignment: Text.AlignRight
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 10
                font { family: urbanist.name; pixelSize: 28; weight: Font.bold}
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
                font { family: urbanist.name; pixelSize: 28; weight: Font.bold}
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
                font { family: urbanist.name; pixelSize: 28; weight: Font.bold}
            }

        }
        //RangeStatus

        //Battery_Level
        Rectangle{
            id: batteryLevelContainer
            width: 61
            height: 33
            x: 1608
            y: 102
            color: "transparent"
            border.color: "transparent"
            Image {
                id: batteryLevelFull
                source: "images/Battery_Level_Full.png"
            }
        }
        //Battery_Level

        //Speedometer
        Speedometer{
            id: speedometer
        }
        //Speedometer

        //Power Gauge
        Powermeter{
            id: powermeter
        }
        //Power Gauge

        //SplashScreen
        Rectangle{
            id: splashScreen
            width: 1920
            height: 720
            visible: true
            color: "black"
            opacity: dataSource.splashScreenOpacity

            Text {
                id: macawLogoText
                text: "macaw"
                color: "white"
                width: 800
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font { family: biysk.name; pixelSize: 200; weight: Font.bold}
            }
            Text {
                id: macawLogoSubText
                text: "Digital Cockpit Solution"
                color: "white"
                width: 800
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 420
                font.capitalization: Font.Capitalize
                font { family: biysk.name; pixelSize: 50; capitalization: capitalize; weight: Font.bold}
            }
        }
        Image {
            id: macawLogo
            x: 630
            y: 240
            source: "images/macaw.png"
            opacity: dataSource.splashScreenOpacity
            visible: true
        }
        //SplashScreen
    }

    Button {
           text: "          "
           background: Rectangle {
                       color: "black"
                   }
           onClicked: window.visibility = "Windowed"

       }
    /*Button {
        id: buttonConnect
        x: 0
        y: 100
        background: Rectangle {
                    color: "black"
                }
        text: qsTr("Connect")
        onClicked: client.connectToServer("192.168.1.39", "3000")
    }*/

}
