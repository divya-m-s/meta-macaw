import QtQuick 2.0

Item {
    id: dataSource
    property bool leftIndicator: false
    property bool airbagInd: false
    property bool fogLightInd: false
    property bool handBrakeInd: false
    property bool headLightInd: false
    property bool seatBeltInd: false
    property bool doorOpenInd: false
    property bool absInd: false
    property bool highBeamInd: false
    property bool lowBeamInd: false
    property bool lowPowerInd: false
    property bool fogInd: false
    property bool rightIndicator: false
    property bool chaplet_0: false
    property bool chaplet_1: false
    property bool chaplet_2: false
    property bool chaplet_3: false
    property bool chaplet_4: false
    property bool chaplet_5: false
    property bool chaplet_6: false
    property bool chaplet_7: false
    property bool chaplet_8: false
    property bool chaplet_9: false
    property bool chaplet_10: false
    property bool chaplet_11: false
    property bool chaplet_12: false
    property real gaugeScale: 1.0
    property real gaugeOpacity: 0.0
    property real splashScreenOpacity: 1.0
    property real macawLogoScale: 1.0
    property real speedovalue: 0.0
    property real powervalue : -50.0
    property real speedoangle: (((speedovalue-240)/240)*270)+135
    property real powerangle: (((powervalue-200)/240)*270)+135
    property real gearOpacity: 0.0
    property real rangeOpacity: 0.0
    property real tripOpacity: 0.0
    property real gearYTransition: 157.0
    property real rangeXTransition: 701.0
    property real rangeYTransition: 193.0
    property real tripXTransition: 1150.0
    property real tripYTransition: 193.0
    property real macawBirdLogoScale: 1.5
    property real macawBirdLogoOpacity: 0.0
    property real mediaPageOpacity: 0.0
    property real navigationPageOpacity: 0.0
    property string gearValue: "P"
    property string batteryLevel: "2"
    property bool defaultScreenVisible: false
    property bool mediaScreenVisible: false
    property bool navigationScreenVisible: false
    property bool startDriveAnimation: false
    property bool stopDriveAnimation: false

    property int data_ID
    property int recievedDataValue
    property int msgIterator
    property int imageNumber: 2
    property int turnIconsNumber

    property string albumName
    property string albumTitle
    property int mediaStatus: 1


    //Welcome Animation

    SequentialAnimation on splashScreenOpacity {
        PauseAnimation { duration: 500 }
        PropertyAnimation { from: 1.0; to: 0.0; duration: 500; easing.type: "InOutSine"}
    }
    SequentialAnimation on defaultScreenVisible {
        PauseAnimation { duration: 1000 }
        PropertyAnimation { from: 0.0; to: 1.0; duration: 100; easing.type: "InOutSine"}
    }
    SequentialAnimation on gaugeOpacity {
        PauseAnimation { duration: 1000 }
        PropertyAnimation { from: 0.0; to: 1.0; duration: 1000; easing.type: "InOutSine"}
    }
    SequentialAnimation on macawBirdLogoOpacity {
        PauseAnimation { duration: 1000 }
        PropertyAnimation { from: 0.0; to: 1.0; duration: 1000; easing.type: "InOutSine"}
    }
    SequentialAnimation on speedovalue {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: 0.0; to: 240.0; duration: 1000}
        PropertyAnimation { from: 240.0; to: 0.0; duration: 1000}
    }
    SequentialAnimation on powervalue {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: -40.0; to: 200.0; duration: 1000}
        PropertyAnimation { from: 200.0; to: 0.0; duration: 1000}
    }
    SequentialAnimation on chaplet_0 {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: false; to: true; duration: 75}
    }
    SequentialAnimation on chaplet_1 {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: false; to: true; duration: 150}
    }
    SequentialAnimation on chaplet_2 {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: false; to: true; duration: 225}
    }
    SequentialAnimation on chaplet_3 {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: false; to: true; duration: 300}
    }
    SequentialAnimation on chaplet_4 {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: false; to: true; duration: 375}
    }
    SequentialAnimation on chaplet_5 {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: false; to: true; duration: 450}
    }
    SequentialAnimation on chaplet_6 {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: false; to: true; duration: 525}
    }
    SequentialAnimation on chaplet_7 {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: false; to: true; duration: 600}
    }
    SequentialAnimation on chaplet_8 {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: false; to: true; duration: 675}
    }
    SequentialAnimation on chaplet_9 {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: false; to: true; duration: 750}
    }
    SequentialAnimation on chaplet_10 {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: false; to: true; duration: 825}
    }
    SequentialAnimation on chaplet_11 {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: false; to: true; duration: 900}
    }
    SequentialAnimation on chaplet_12 {
        PauseAnimation { duration: 2000 }
        PropertyAnimation { from: false; to: true; duration: 975}
    }
    SequentialAnimation on mediaPageOpacity {
        PauseAnimation { duration: 3000 }
        PropertyAnimation { from: false; to: true; duration: 500; easing.type: "InOutSine"}
    }
    SequentialAnimation on navigationPageOpacity {
        PauseAnimation { duration: 3000 }
        PropertyAnimation { from: false; to: true; duration: 500; easing.type: "InOutSine"}
    }
    SequentialAnimation on gearOpacity {
        PauseAnimation { duration: 4000 }
        PropertyAnimation { from: 0.0; to: 1.0; duration: 500; easing.type: "InOutSine"}
    }
    SequentialAnimation on tripOpacity {
        PauseAnimation { duration: 4000 }
        PropertyAnimation { from: 0.0; to: 1.0; duration: 500; easing.type: "InOutSine"}
    }
    SequentialAnimation on rangeOpacity {
        PauseAnimation { duration: 4000 }
        PropertyAnimation { from: 0.0; to: 1.0; duration: 500; easing.type: "InOutSine"}
    }
    SequentialAnimation on gearYTransition {
        PauseAnimation { duration: 4000 }
        PropertyAnimation { from: 127.0; to: 157.0; duration: 500; easing.type: "InOutSine"}
    }
    SequentialAnimation on rangeXTransition {
        PauseAnimation { duration: 4000 }
        PropertyAnimation { from: 671.0; to: 701.0; duration: 500; easing.type: "InOutSine"}
    }
    SequentialAnimation on tripXTransition {
        PauseAnimation { duration: 4000 }
        PropertyAnimation { from: 1180.0; to: 1150.0; duration: 500; easing.type: "InOutSine"}
    }
    SequentialAnimation on macawBirdLogoScale {
        PauseAnimation { duration: 4000 }
        PropertyAnimation { from: 1.5; to: 1.0; duration: 500; easing.type: "InOutSine"}
    }
    SequentialAnimation on leftIndicator {
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
    }
    SequentialAnimation on airbagInd {
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
    }
    SequentialAnimation on fogLightInd {
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
    }
    SequentialAnimation on handBrakeInd {
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
    }
    SequentialAnimation on headLightInd {
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
    }
    SequentialAnimation on seatBeltInd {
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
    }
    SequentialAnimation on doorOpenInd {
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
    }
    SequentialAnimation on absInd {
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
    }
    SequentialAnimation on highBeamInd {
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
    }
    SequentialAnimation on lowPowerInd {
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
    }
    SequentialAnimation on fogInd {
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
    }
    SequentialAnimation on rightIndicator {
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
        PropertyAnimation { from: false; to: true; duration: 750}
        PropertyAnimation { from: true; to: false; duration: 750}
    }
    //Welcome Animation


    //Drive Animation
    SequentialAnimation on speedovalue {
        running: startDriveAnimation
        loops: Animation.Infinite
        PropertyAnimation { from: 0.0; to: 60.0; duration: 2000; easing.type: "InOutSine"}
        PauseAnimation { duration: 50 }
        PropertyAnimation { from: 60.0; to: 120.0; duration: 2000; easing.type: "InOutSine"}
        PauseAnimation { duration: 50 }
        PropertyAnimation { from: 120.0; to: 160.0; duration: 2000; easing.type: "InOutSine"}
        PauseAnimation { duration: 50 }
        PropertyAnimation { from: 160.0; to: 0.0; duration: 3000; easing.type: "InOutSine"}
    }
    SequentialAnimation on speedovalue {
        running: stopDriveAnimation
        PropertyAnimation { from: speedovalue; to: 0.0; duration: 2000}
    }
    SequentialAnimation on powervalue {
        running: startDriveAnimation
        loops: Animation.Infinite
        PropertyAnimation { from: 0.0; to: 60.0; duration: 2000; easing.type: "InOutSine"}
        PauseAnimation { duration: 50 }
        PropertyAnimation { from: 60.0; to: 120.0; duration: 2000; easing.type: "InOutSine"}
        PauseAnimation { duration: 50 }
        PropertyAnimation { from: 120.0; to: 160.0; duration: 2000; easing.type: "InOutSine"}
        PauseAnimation { duration: 50 }
        PropertyAnimation { from: 160.0; to: -30.0; duration: 2500; easing.type: "InOutSine"}
        PropertyAnimation { from: -30.0; to: 0.0; duration: 500; easing.type: "InOutSine"}
    }
    SequentialAnimation on powervalue {
        running: stopDriveAnimation
        PropertyAnimation { from: powervalue; to: 0.0; duration: 2000}
    }
    //Drive Animation

    //values from Vehicle Data Client
    Connections
    {
        target: vehicleServer
        function onNewMessage(passMessage)
        {
            data_ID=passMessage*1
            if (data_ID < 0)
            {
                data_ID = data_ID * -1
            }
            data_ID = data_ID % 100
            recievedDataValue =(passMessage*1)/100

            switch(data_ID)
            {
                /***** Central Screen Selection *****/
            case 0:
                if(recievedDataValue === 0)
                {
                    defaultScreenVisible = true
                    mediaScreenVisible = false
                    navigationScreenVisible = false
                }
                else if(recievedDataValue === 1)
                {
                    defaultScreenVisible = false
                    mediaScreenVisible = true
                    navigationScreenVisible = false
                }
                else if(recievedDataValue === 2)
                {
                    defaultScreenVisible = false
                    mediaScreenVisible = false
                    navigationScreenVisible = true
                }
                break;

                /***** Speedometer Value *****/
            case 1:
                if(recievedDataValue >=0 && recievedDataValue <=240)
                {
                    speedovalue = recievedDataValue
                }
                break;

                /***** Powermeter Value *****/
            case 2:
                if(recievedDataValue >=-40 && recievedDataValue <=200)
                {
                    powervalue = recievedDataValue
                }
                break;

                /***** PRNDL *****/
            case 3:
                if(recievedDataValue === 1)
                {
                    gearValue= "P"
                }
                else if(recievedDataValue === 2)
                {
                    gearValue= "R"
                }
                else if(recievedDataValue === 3)
                {
                    gearValue= "N"
                }
                else if(recievedDataValue === 4)
                {
                    gearValue= "D"
                }
                else if(recievedDataValue === 5)
                {
                    gearValue= "L"
                }
                break;

                /***** battery *****/
            case 4:
                if(recievedDataValue === 0)
                {
                    batteryLevel= "Empty"
                }
                else if(recievedDataValue >0 && recievedDataValue <=25)
                {
                    batteryLevel= "1"
                }
                else if(recievedDataValue >25 && recievedDataValue <=50)
                {
                    batteryLevel= "2"
                }
                else if(recievedDataValue >50 && recievedDataValue <=75)
                {
                    batteryLevel= "3"
                }
                else if(recievedDataValue >75 && recievedDataValue <=99)
                {
                    batteryLevel= "4"
                }
                else if(recievedDataValue === 100)
                {
                    batteryLevel= "Full"
                }
                break;

                /***** telltale - seatBelt *****/
            case 5:
                if(recievedDataValue === 1)
                {
                    seatBeltInd= true
                }
                else if(recievedDataValue === 0)
                {
                    seatBeltInd= false
                }
                break;

                /***** telltale - abs *****/
            case 6:
                if(recievedDataValue === 1)
                {
                    absInd= true
                }
                else if(recievedDataValue === 0)
                {
                    absInd= false
                }
                break;

                /***** telltale - highBeam *****/
            case 7:
                if(recievedDataValue === 0)
                {
                    highBeamInd= false
                    lowBeamInd= false
                }
                else if(recievedDataValue === 1)
                {
                    highBeamInd= false
                    lowBeamInd= true
                }
                else if(recievedDataValue === 2)
                {
                    highBeamInd= true
                    lowBeamInd= false
                }
                break;

                /***** telltale - doorAjar *****/
            case 8:
                if(recievedDataValue === 1)
                {
                    doorOpenInd = true
                }
                else if(recievedDataValue === 0)
                {
                    doorOpenInd = false
                }
                break;

                /***** telltale - airbag *****/
            case 9:
                if(recievedDataValue === 1)
                {
                    airbagInd = true
                }
                else if(recievedDataValue === 0)
                {
                    airbagInd = false
                }
                break;

                /***** telltale - Low Power *****/
            case 10:
                if(recievedDataValue === 1)
                {
                    lowPowerInd = true
                }
                else if(recievedDataValue === 0)

                {
                    lowPowerInd = false
                }
                break;

                /***** telltale - Fog Light *****/
            case 11:
                if(recievedDataValue === 1)
                {
                    fogLightInd = true
                }
                else if(recievedDataValue === 0)
                {
                    fogLightInd = false
                }
                break;

                /***** telltale - Left Indicator *****/
            case 12:
                if(recievedDataValue === 1)
                {
                    leftIndicator = true
                }
                else if(recievedDataValue === 0)
                {
                    leftIndicator = false
                }
                break;

                /***** telltale - Right Indicator *****/
            case 13:
                if(recievedDataValue === 1)
                {
                    rightIndicator = true
                }
                else if(recievedDataValue === 0)
                {
                    rightIndicator = false
                }
                break;

                /***** telltale - Head Light *****/
            case 14:
                if(recievedDataValue === 1)
                {
                    headLightInd = true
                }
                else if(recievedDataValue === 0)
                {
                    headLightInd = false
                }
                break;

                /***** telltale - Hand Brake *****/
            case 15:
                if(recievedDataValue === 1)
                {
                    handBrakeInd = true
                }
                else if(recievedDataValue === 0)
                {
                    handBrakeInd = false
                }
                break;

                /***** telltale - Fog *****/
            case 16:
                if(recievedDataValue === 1)
                {
                    fogInd = true
                }
                else if(recievedDataValue === 0)
                {
                    fogInd = false
                }
                break;

                /***** Start/Stop Animation *****/
            case 17:
                if(recievedDataValue === 1)
                {
                    startDriveAnimation = true
                    stopDriveAnimation = false
                    //console.log("Animation Data: ",recievedDataValue)
                }
                else if(recievedDataValue === 0)
                {
                    startDriveAnimation = false
                    stopDriveAnimation = true
                    //console.log("Animation Data: ",recievedDataValue)
                }
                break;
            }
        }
    }

    //values from Album Client
    Connections
    {
        target: albumServer
        function onNewMessage(passMessage)
        {
            data_ID=passMessage*1
            if (data_ID < 0)
            {
                data_ID = data_ID * -1
            }
            data_ID = data_ID % 100
            recievedDataValue =(passMessage*1)/100

            /***** Album Art Image *****/
            imageNumber = recievedDataValue
        }
    }

    //values from App Data Client
    Connections
    {
        target: appDataServer
        function onNewMessage(recievedDataValue, data_ID)
        {
            data_ID = data_ID*1
            switch(data_ID)
            {
                /***** Album Name *****/
            case 11:
                albumName = recievedDataValue
                break;

                /***** Album Title *****/
            case 12:
                albumTitle = recievedDataValue
                break;

                /***** Play/Pause/Stop *****/
            case 15:
                mediaStatus = recievedDataValue
                break;

                /***** Turn Icons *****/
            case 24:
                turnIconsNumber = recievedDataValue
                break;
            }
        }
    }
}
