import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.14
import QtLocation 5.6
import QtPositioning 5.6
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
            opacity: 0.0
        }

        //Map
        Map {
            id: mapboxglMap
            width: 1085
            height: 456
            x:420
            y:134
            plugin: mapPlugin
            center: QtPositioning.coordinate(8.558961, 76.882808)
            //center: QtPositioning.coordinate(60.170448, 24.942046)
            zoomLevel: 16
            copyrightsVisible: false
            visible: dataSource.navigationScreenVisible
            opacity: dataSource.navigationPageOpacity
            transform: Scale { origin.x: width*0.5; origin.y: height*0.5; xScale: 0.99; yScale: 0.98}
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
        Image {
            id: mapOverlayImage
            source: "images/Map_Overlay.png"
            visible: dataSource.navigationScreenVisible
            opacity: dataSource.navigationPageOpacity
            transform: Scale { origin.x: width*0.5; origin.y: height*0.5; xScale: 0.8; yScale: 0.99}
        }
        Image {
            id: turnIcons
            x: 35
            y: 300
            width:512
            height:512
            source: "turnIcons/TurnIcon_" + dataSource.turnIconsNumber + ".png"
            transform: Scale { origin.x: width*0.5; origin.y: height*0.5; xScale: 0.15; yScale: 0.15}
        }
        //Map

        //Default Screen
        Rectangle{
            id: defaultCentralScreen
            width: 1085
            height: 456
            x:420
            y:134
            color: "transparent"
            border.color: "transparent"
            visible: dataSource.defaultScreenVisible
            Image {
                id: macawBirdLogo
                source: "images/macaw.png"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                scale: dataSource.macawBirdLogoScale
                opacity: dataSource.macawBirdLogoOpacity
            }
        }
        //Default Screen

        Media{
            id: mediaPlayerScreen
        }

        //Time
        Text {
            id: currentTime
            x: 933
            y: 54
            width: 600
            color: "white"
            font {family: roboto.name; pixelSize: 22}
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
            }//server.sendMessage(seatBeltMessage.text + "2" + "X" + brakeWarningLight.text + "3" + "X" + highBeam.text + "4" + "X" + doorAjar.text + "5" + "X" + airBag.text + "6" + "X")
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
        Image { id: lowBeam; width: 30; height: 30; x: 1312; y: 52; source: "images/lowbeam.png"; visible: dataSource.lowBeamInd }
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
                    font { family: roboto.name; pixelSize: 30}
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
            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "black" }
                    GradientStop { position: 0.9; color: "transparent" }
                }
            }
            Image {
                id: gearBorder
                source: "images/Gear_Box.png"
                width: 84
                height: 84
                Text {
                    id: gearValue
                    text: dataSource.gearValue
                    color: "white"
                    width: 100
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    font { family: roboto.name; pixelSize: 51}
                }
            }

        }
        //Gear//server.sendMessage(seatBeltMessage.text + "2" + "X" + brakeWarningLight.text + "3" + "X" + highBeam.text + "4" + "X" + doorAjar.text + "5" + "X" + airBag.text + "6" + "X")

        //TripStatus
        TripStatus{
            id: tripMainContainer
        }
        //TripStatus

        //RangeStatus
        RangeStatus{
            id: rangeMainContainer
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
                id: batteryLevelInd
                source: "images/Battery_Level_"+dataSource.batteryLevel+".png"
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
                font { family: biysk.name; pixelSize: 200}
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
                font { family: biysk.name; pixelSize: 50; capitalization: capitalize}
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
        text: "Quest Global"
        background: Rectangle {
            color: "black"
        }
        onClicked: window.visibility = "Windowed"

    }

}
