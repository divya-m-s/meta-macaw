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

    property int messageFlag
    property int sendValue
    property int i


    //Welcome Animation

    SequentialAnimation on splashScreenOpacity {
          PauseAnimation { duration: 500 }
          PropertyAnimation { from: 1.0; to: 0.0; duration: 500; easing.type: "InOutSine"}
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
    SequentialAnimation on macawBirdLogoScale {
          PauseAnimation { duration: 2000 }
          PropertyAnimation { from: 1.5; to: 1.0; duration: 1000; easing.type: "InOutSine"}
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

    //values from server
    Connections {
        target: client
        function onNewMessage(passMessage) {

            messageFlag=passMessage*1

            for(i=passMessage.length; i>0 ; i=i-2)
            {
                messageFlag=messageFlag % 10
                sendValue=(passMessage*1)/10

                switch(messageFlag)
                {
                    /***** battery *****/
                case 0:
                    if(sendValue >0 && sendValue <=25)
                    {
                        batteryLevel= 1
                    }
                    else if(sendValue >25 && sendValue <=50)
                    {
                        batteryLevel= 2
                    }
                    else if(sendValue >50 && sendValue <=75)
                    {
                        batteryLevel= 3
                    }
                    else if(sendValue >75 && sendValue <=100)
                    {
                        batteryLevel= 4
                    }
                    break;

                    /***** PRNDL *****/
                case 1:
                    if(sendValue === 1)
                    {
                        prndlValue= 1
                    }
                    else if(sendValue === 2)
                    {
                        prndlValue= 2
                    }
                    else if(sendValue === 3)
                    {
                        prndlValue= 3
                    }
                    else if(sendValue === 4)
                    {
                        prndlValue= 4
                    }
                    else if(sendValue === 5)
                    {
                        prndlValue= 5
                    }
                    break;

                    /***** telltale - seatBelt *****/
                case 2:
                    if(sendValue === 1)
                    {
                        seatBeltInd= true
                    }
                    else if(sendValue === 0)
                    {
                        seatBeltInd= false
                    }
                    break;

                    /***** telltale - brakeWarningLight *****/
                case 3:
                    if(sendValue === 1)
                    {
                        handBrakeInd= true
                    }
                    else if(sendValue === 0)
                    {
                        handBrakeInd= false
                    }
                    break;

                    /***** telltale - highBeam *****/
                case 4:
                    if(sendValue === 1)
                    {
                        highBeamInd = true
                    }
                    else if(sendValue === 0)
                    {
                        highBeamInd = false
                    }
                    break;

                    /***** telltale - doorAjar *****/
                case 5:
                    if(sendValue === 1)
                    {
                        doorOpenInd = true
                    }
                    else if(sendValue === 0)
                    {
                        doorOpenInd = flase
                    }
                    break;

                    /***** telltale - airbag *****/
                case 6:
                    if(sendValue === 1)
                    {
                        airbagInd = true
                    }
                    else if(sendValue === 0)
                    {
                        airbagInd = false
                    }
                    break;
                }
            }

        }
    }

}
