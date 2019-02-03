import QtQuick 2.7
import QtQuick.Window 2.1
import QtQuick.Controls 2.1
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.1
import QtLocation 5.7
import QtPositioning 5.7



Window {
    id: window
    visible: true
    width: 1350
    height: 750
    color: "#000000"
    property alias text5: text5
    property alias text4Text: text4.text
    title: qsTr("Dynamic Positioning")

    function updateValue() {
        //button
        button1.value = mqttvalue.buttona1()
    }


    Item{
        id: title
        width: 400
        height: 73
        Text {
            id: dynamic
            x: 116
            y: 0
            width: 169
            height: 48
            color: "#ffffff"
            text: qsTr("Dynamic")
            styleColor: "#000000"
            font.letterSpacing: 3
            font.weight: Font.Medium
            font.family: "roboto"
            fontSizeMode: Text.FixedSize
            font.pixelSize: 35
        }
        Image {
            id: imagesyergie
            x: 0
            width: 92
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 31
            anchors.top: parent.top
            anchors.topMargin: 0
            source: "syergielogofix.jpg"
        }
        Image {
            id: imagemusic
            x: 1109
            width: 53
            visible: false
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -599
            anchors.top: parent.top
            anchors.topMargin: 628
            source: "music.png"
        }
        Image {
            id: imagegame
            x: 959
            width: 53
            visible: false
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -599
            anchors.top: parent.top
            anchors.topMargin: 628
            source: "game.png"
        }
        Image {
            id: imagetesla
            x: 157
            width: 87
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -310
            anchors.top: parent.top
            anchors.topMargin: 263
            source: "tesla.PNG"
        }
        Image {
            id: imagerightlane
            x: 250
            width: 121
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -395
            anchors.top: parent.top
            anchors.topMargin: 196
            source: "rightlane.png"
        }
        Image {
            id: imageleftlane
            x: 38
            width: 113
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -395
            anchors.top: parent.top
            anchors.topMargin: 196
            source: "leftlane.png"
        }
        Text {
            id: dynamic1
            x: 281
            y: 0
            width: 169
            height: 48
            color: "#ffffff"
            text: qsTr("Positioning")
            font.letterSpacing: 3
            font.weight: Font.Medium
            font.family: "roboto"
            font.pixelSize: 35
            styleColor: "#000000"
            fontSizeMode: Text.FixedSize
        }

        Text {
            id: dynamic2
            x: 116
            y: 40
            width: 169
            height: 48
            color: "#ffffff"
            text: qsTr("System")
            font.weight: Font.Medium
            font.letterSpacing: 3
            font.family: "roboto"
            styleColor: "#000000"
            font.pixelSize: 35
            fontSizeMode: Text.FixedSize
        }
    }

    /*=======HEADER=======*/
    Item{
        id: header
        x: 785
        y: 0
        width: 565
        height: 121

        /*=======MODE=======*/
        Item{
            id: mode
            x: 59
            y: 30
            width: 61
            height: 64
            Text {
                x: 9
                y: -5
                width: 40
                height: 37
                text: qsTr("A")
                horizontalAlignment: Text.AlignHCenter
                color: "#f9f9f9"
                font.pointSize: 30
            }
            Text {
                x: 8
                y: 48
                width: 40
                height: 17
                text: qsTr("Mode")
                horizontalAlignment: Text.AlignHCenter
                color: "#f4f4f4"
                font.pointSize: 8
            }
        }

        /*=======TRAINING=======*/
        Item{
            id: trainingGroup
            x: 126
            y: 21
            width: 62
            height: 73
            Text {
                x: 7
                y: 57
                width: 47
                height: 13
                color: "#f9f9f9"
                text: qsTr("Training")
                font.letterSpacing: 1
                font.pointSize: 8
                fontSizeMode: Text.Fit
                //color: "#313131"
            }
            Button {
                id: trainingbutton
                x: 8
                y: 9
                width: 46
                height: 40
                //visible: false
                visible: {
                    trainingbutton.checked = false
                    trainingbutton.checkable = true
                }

                Rectangle {
                    id: trainingRect
                    x: 0
                    y: 0
                    width: 46
                    height: 40
                    color: trainingbutton.checked ? "#d3d3ff" : "#f3f3f4"
                }

                Image {
                    id: image2
                    x: 7
                    y: 2
                    width: 32
                    height: 37
                    source: "icon_training.png"
                }

                Text {
                    id: text4
                    x: -485
                    y: -6
                    width: 87
                    height: 21
                    color: "#cb2525"
                    text: qsTr("training on")
                    font.pixelSize: 16
                    visible: trainingbutton.checked
                }


            }
        }


        /*=======MISSION=======*/
        Item{
            id: missionGroup
            x: 207
            y: 21
            width: 106
            height: 73
            Text {
                x: 32
                y: 57
                text: qsTr("Mission")
                font.letterSpacing: 1
                font.pointSize: 8
                fontSizeMode: Text.Fit
                color: "#f9f8f8"
            }

            /*-------add waypoint-------*/
            Button {
                id: addbutton
                x: 8
                y: 9
                width: 42
                height: 40
                visible: {
                    addbutton.checked = false;
                    addbutton.checkable = true;

                }

                Rectangle {
                    id: addRect
                    x: 0
                    y: 0
                    width: 46
                    height: 40
                    color: addbutton.checked ? "#d3d3ff" : "#f3f3f4"
                }
                Image {
                    id: addIcon
                    x: 7
                    y: 2
                    width: 32
                    height: 37
                    source: "icon_addWaypoint.png"
                }
                Text {
                    id: text5
                    x: -614
                    y: 21
                    width: 87
                    height: 20
                    color: "#cb2525"
                    text: qsTr("mission on")
                    font.pixelSize: 16
                    visible: startbutton.checked

                }

                /*
                Text {
                    id: text9
                    x: 3
                    y: 14
                    text: qsTr("Start")
                    font.pixelSize: 12
                }*/

            }

            /*------ vessel info button-----*/
            Button {
                id: vesselbutton
                x: -751
                y: 604
                width: 42
                height: 40
                visible: {
                    vesselbutton.checked = false;
                    vesselbutton.checkable = true;

                }

                Rectangle {
                    id: vesselRect
                    x: 0
                    y: 0
                    width: 46
                    height: 40
                    color: vesselbutton.checked ? "#d3d3ff" : "#f3f3f4"
                }
                Image {
                    id: vesselIcon
                    x: 7
                    y: 2
                    width: 32
                    height: 37
                    source: "vessellogo.png"
                }
                Text {
                    id: text6
                    x: -20
                    y: -26
                    width: 87
                    height: 20
                    color: "#cb2525"
                    text: qsTr("Vessel info")
                    visible: vesselbutton.checked
                    font.pixelSize: 16

                }

                /*
                Text {
                    id: text9
                    x: 3
                    y: 14
                    text: qsTr("Start")
                    font.pixelSize: 12
                }*/

            }

            /*------ Propeller info button-----*/
            Button {
                id: propellerbutton
                x: -629
                y: 604
                width: 42
                height: 40
                visible: {
                    propellerbutton.checked = false;
                    propellerbutton.checkable = true;

                }

                Rectangle {
                    id: propellerRect
                    x: 0
                    y: 0
                    width: 46
                    height: 40
                    color: vesselbutton.checked ? "#d3d3ff" : "#f3f3f4"
                }
                Image {
                    id: propellerIcon
                    x: 7
                    y: 2
                    width: 32
                    height: 37
                    source: "propeller.png"
                }
                Text {
                    id: text6_propellerbutton
                    x: -20
                    y: -26
                    width: 87
                    height: 20
                    color: "#cb2525"
                    text: qsTr("Propeller info")
                    visible: propellerbutton.checked
                    font.pixelSize: 16

                }

                /*
                Text {
                    id: text9
                    x: 3
                    y: 14
                    text: qsTr("Start")
                    font.pixelSize: 12
                }*/

            }

            /*------ Winch info button-----*/
            Button {
                id: winchbutton
                x: -481
                y: 604
                width: 42
                height: 40
                visible: {
                    winchbutton.checked = false;
                    winchbutton.checkable = true;

                }

                Rectangle {
                    id: winchRect
                    x: 0
                    y: 0
                    width: 46
                    height: 40
                    color: winchbutton.checked ? "#d3d3ff" : "#f3f3f4"
                }
                Image {
                    id: winchIcon
                    x: 6
                    y: 1
                    width: 32
                    height: 37
                    source: "winchfix.png"
                }
                Text {
                    id: text6_winchbutton
                    x: -20
                    y: -26
                    width: 87
                    height: 20
                    color: "#cb2525"
                    text: qsTr("Propeller info")
                    visible: winchbutton.checked
                    font.pixelSize: 16

                }

                /*
                Text {
                    id: text9
                    x: 3
                    y: 14
                    text: qsTr("Start")
                    font.pixelSize: 12
                }*/

            }

            /*------ User info button-----*/
            Button {
                id: userbutton
                x: -319
                y: 604
                width: 42
                height: 40
                visible: {
                    userbutton.checked = false;
                    userbutton.checkable = true;

                }

                Rectangle {
                    id: userRect
                    x: 0
                    y: 0
                    width: 46
                    height: 40
                    color: userbutton.checked ? "#d3d3ff" : "#f3f3f4"
                }
                Image {
                    id: userIcon
                    x: 6
                    y: 1
                    width: 32
                    height: 37
                    source: "profile.png"
                }
                Text {
                    id: text6_userbutton
                    x: -20
                    y: -26
                    width: 87
                    height: 20
                    color: "#cb2525"
                    text: qsTr("User info")
                    visible: userbutton.checked
                    font.pixelSize: 16

                }
            }

            /*------ Submarin Cable button-----*/
            Button {
                id: cablebutton
                x: -165
                y: 604
                width: 42
                height: 40
                visible: {
                    cablebutton.checked = false;
                    cablebutton.checkable = true;

                }

                Rectangle {
                    id: cableRect
                    x: 0
                    y: 0
                    width: 46
                    height: 40
                    color: cablebutton.checked ? "#d3d3ff" : "#f3f3f4"
                }
                Image {
                    id: cableIcon
                    x: 6
                    y: 1
                    width: 32
                    height: 37
                    source: "cable.png"
                }
                Text {
                    id: text6_cablebutton
                    x: -20
                    y: -26
                    width: 87
                    height: 20
                    color: "#cb2525"
                    text: qsTr("cable info")
                    visible: cablebutton.checked
                    font.pixelSize: 16

                }
            }



            /*-------start-------*/
            Button {
                id: startbutton
                x: 60
                y: 9
                width: 41
                height: 40
                visible: {
                    addbutton.checked = false;
                    addbutton.checkable = true;
                }

                Rectangle {
                    id: startRect
                    x: 0
                    y: 0
                    width: 46
                    height: 40
                    color: startbutton.checked ? "#d3d3ff" : "#f3f3f4"
                }
                Image {
                    id: startIcon
                    x: 7
                    y: 2
                    width: 32
                    height: 37
                    source: "icon_startMission.png"
                }

                /*
                Text {
                    id: text8
                    x: 3
                    y: 14
                    text: qsTr("Add")
                    font.pixelSize: 12
                }*/

                Text {
                    id: text1000
                    x: -573
                    y: 47
                    width: 87
                    height: 20
                    color: "#cb2525"
                    text: qsTr("add clicked")
                    font.pixelSize: 16
                    visible: addbutton.checked

                }

            }




        }

        /*=======TRACKING=======*/
        Item{
            id: trackingGroup
            x: 335
            y: 21
            width: 86
            height: 73
            Text {
                x: 21
                y: 55
                text: qsTr("Tracking")
                font.letterSpacing: 1
                font.pointSize: 8
                fontSizeMode: Text.Fit
                color: "#f9f8f8"
            }

            /*-------clear-------*/
            Button {
                id: clearbutton
                x: 3
                y: 9
                width: 38
                height: 40
                visible: {
                    clearbutton.checked = false;
                    clearbutton.checkable = true;
                }

                Rectangle {
                    id: clearRect
                    x: 0
                    y: 0
                    width: 46
                    height: 40
                    color: clearbutton.checked ? "#d3d3ff" : "#f3f3f4"
                }
                Image {
                    id: clearIcon
                    x: 2
                    y: 2
                    width: 37
                    height: 37
                    source: "icon_clearTracking.png"
                }

                Text {
                    id: text7
                    x: -518
                    y: 21
                    width: 87
                    height: 20
                    color: "#cb2525"
                    text: qsTr("clear clicked")
                    font.pixelSize: 16
                    visible: clearbutton.checked

                }
                /*
                Text {
                    id: text10
                    x: 1
                    y: 16
                    text: qsTr("Clear")
                    font.pixelSize: 12
                }
                */
            }

            /*-------switch(view-hide)-------*/
            Switch {
                id: control2
                x: 48
                y: 10
                //signal checked
                text: control2.checked ? qsTr("Show") : qsTr("Hide")

                indicator: Rectangle {
                    implicitWidth: 28
                    implicitHeight: 8
                    x: control2.leftPadding
                    y: parent.height / 3 - height / 3
                    radius: 6
                    color: control2.checked ? "#487048" : "#4f545b"
                    // border.color: control.checked ? "#487048" : "#4f545b"

                    Rectangle { //bulet
                        x: control2.checked ? parent.width - width : 0
                        y: -3
                        width: 14
                        height: 14
                        radius: 6
                        color: control2.checked ? "#4dd880" : "#aeb2b7"
                        //border.color: control.checked ? (control.down ? "#31a010" : "#ffffff") : "#999999"
                    }
                }

                contentItem: Text {
                    x: -24
                    y: 9
                    color: "#f0efef"
                    text: control2.text
                    horizontalAlignment: Text.AlignHCenter
                    font.letterSpacing: 1
                    font.pointSize: 7
                    wrapMode: Text.WordWrap
                    //font: control2.font
                    opacity: enabled ? 1.0 : 0.3
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: control2.indicator.width + control2.spacing
                }

            }
        }

        /*=======DGPS=======*/
        Item{
            id: dgps
            x: 464
            y: 21
            width: 70
            height: 73
            Text {
                x: 21
                y: 55
                text: qsTr("DGPS")
                font.letterSpacing: 1
                font.pointSize: 8
                fontSizeMode: Text.Fit
                color: "#f9f8f8"
            }
        }
        ToolSeparator {
            id: toolSeparator1
            x: 110
            y: 17
            width: 13
            height: 77
        }

        ToolSeparator {
            id: toolSeparator2
            x: 192
            y: 17
            width: 13
            height: 77
        }

        ToolSeparator {
            id: toolSeparator3
            x: 317
            y: 17
            width: 13
            height: 77
        }

        ToolSeparator {
            id: toolSeparator4
            x: 445
            y: 21
            width: 13
            height: 73
        }
    }

    Item{
        id: leftSide
        x: 0
        y: 324
        width: 400
        height: 261

        Item{
            id: position_grup
            x: 0
            y: 110
            width: 88
            height: 86
            Rectangle {
                id: position_bg
                x: -113
                y: -10
                width: 82
                height: 72
                color: "#000000"
                border.color: "#0b0b0b"
            }
            Text {
                id: latidude_position
                x: 98
                y: 83
                color: "#f2f1f1"
                text: qsTr("Latitude    :")
                font.pixelSize: 12
            }
            Text {
                id: longitude_position
                x: 98
                y: 103
                color: "#f7f6f6"
                text: qsTr("Longitude :")
                font.pixelSize: 12
            }
            Text {
                id: latidude_position_value
                x: 186
                y: 84
                color: "#f7f6f6"
                text: qsTr("-6.892382")
                font.pixelSize: 12
            }
            Text {
                id: longitude_position_value
                x: 175
                y: 103
                color: "#f4f4f4"
                text: qsTr("107.608352")
                font.pixelSize: 12
            }

        }

        Item{
            id: velocity_grup
            x: 228
            y: 5
            width: 82
            height: 86
            Text {
                id: velocity_value
                x: -60
                y: -225
                width: 45
                height: 34
                color: "#ececef"
                text: qsTr("1.2")
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 26
            }
            Text {
                id: knot
                x: -49
                y: -185
                color: "#efeff0"
                text: qsTr("knot")
                font.pixelSize: 12
            }

            Text {
                id: knot1
                x: -192
                y: -185
                color: "#efeff0"
                text: qsTr("A")
                font.bold: true
                font.pixelSize: 12
            }

            Text {
                id: knot2
                x: -179
                y: -185
                color: "#efeff0"
                text: qsTr("SA")
                font.bold: true
                font.pixelSize: 12
            }

            Text {
                id: knot3
                x: -159
                y: -185
                color: "#efeff0"
                text: qsTr("C")
                font.bold: true
                font.pixelSize: 12
            }

            Text {
                id: knot4
                x: -146
                y: -185
                color: "#efeff0"
                text: qsTr("M")
                font.bold: true
                font.pixelSize: 12
            }

            Text {
                id: knot5
                x: -131
                y: -185
                color: "#efeff0"
                text: qsTr("L")
                font.bold: true
                font.pixelSize: 12
            }
        }

        Item{
            id: heading_grup
            x: 250
            y: -230
            width: 87
            height: 74
            Rectangle {
                id: heading_bg
                x: 5
                y: 5
                width: 78
                height: 72
                color: "#000000"
                border.color: "#0e0d0d"
            }

            Text {
                id: heading
                x: 31
                y: 50
                color: "#eaebec"
                text: qsTr("head")
                font.pixelSize: 12
            }
            Text {
                id: heading_value
                x: 12
                y: 16
                color: "#f6f6f7"
                text: qsTr("313.3")
                font.bold: true
                font.pixelSize: 22
            }

        }

        Item{
            id: cable_grup
            x: 250
            y: 179
            width: 184
            height: 86
            Rectangle {
                id: rectangle8
                x: 5
                y: 5
                width: 188
                height: 72
                color: "#070606"
                border.color: "#000000"
            }

            Text {
                id: cable
                x: 63
                y: 15
                color: "#f3f4f5"
                text: qsTr("CABLE")
                font.pixelSize: 12
            }
            Text {
                id: out
                x: 15
                y: 35
                color: "#f9f8f8"
                text: qsTr("Out    :")
                font.pixelSize: 12
            }
            Text {
                id: remaining
                x: 15
                y: 55
                color: "#f7f6f6"
                text: qsTr("Remaining :")
                font.pixelSize: 12
            }
            Text {
                id: out_value
                x: 103
                y: 36
                color: "#f3f1f1"
                text: qsTr("234 m")
                font.pixelSize: 12
            }
            Text {
                id: remaining_value
                x: 92
                y: 55
                color: "#f2f1f1"
                text: qsTr("3661 m")
                font.pixelSize: 12
            }

        }

        Item{
            id: distance_grup
            x: 492
            y: 30
            width: 188
            height: 86
            Rectangle {
                id: distance_bg
                x: 5
                y: 5
                width: 175
                height: 72
                color: "#fdfdfd"
                border.color: "#dbdbdb"
            }

            Text {
                id: distance
                x: 15
                y: 15
                color: "#3056b8"
                text: qsTr("REMAINING DISTANCE")
                font.pixelSize: 12
            }
            Text {
                id: nextWaypoint
                x: 15
                y: 35
                text: qsTr("Next Waypoint :")
                font.pixelSize: 12
            }
            Text {
                id: desination
                x: 15
                y: 55
                text: qsTr("Destination :")
                font.pixelSize: 12
            }
            Text {
                id: nextWaypoint_value
                x: 103
                y: 36
                text: qsTr("123 m")
                font.pixelSize: 12
            }
            Text {
                id: desination_value
                x: 92
                y: 55
                text: qsTr("3000 m")
                font.pixelSize: 12
            }

        }

        Item{
            id: nextWaypoint_grup
            x: 492
            y: -62
            width: 232
            height: 86
            Rectangle {
                id: nextWaypoint_bg
                x: 5
                y: 5
                width: 209
                height: 72
                color: "#fdfdfd"
                border.color: "#dbdbdb"
            }

            Text {
                id: nextWaypointt
                x: 15
                y: 15
                color: "#3056b8"
                text: qsTr("Next Waypoint")
                font.pixelSize: 12
            }
            Text {
                id: latidude_nextWaypoint
                x: 15
                y: 35
                text: qsTr("Latitude    :")
                font.pixelSize: 12
            }
            Text {
                id: longitude_nextWaypoint
                x: 15
                y: 55
                text: qsTr("Longitude :")
                font.pixelSize: 12
            }
            Text {
                id: latidude_nextWaypoint_value
                x: 103
                y: 36
                text: qsTr("-8.892382")
                font.pixelSize: 12
            }
            Text {
                id: longitude_nextWaypoint_value
                x: 92
                y: 55
                text: qsTr("106.608352")
                font.pixelSize: 12
            }

        }

        Item{
            id: windSpeed_grup
            x: 151
            y: 156
            width: 144
            height: 72
            Rectangle {
                id: windSpeed_bg
                x: 5
                y: 5
                width: 0
                height: 0
                color: "#090808"
                border.color: "#dbdbdb"
            }

            Text {
                id: windSpeed
                x: -141
                y: 37
                color: "#f1f1f3"
                text: qsTr("WIND SPEED")
                font.pixelSize: 12
            }
            Text {
                id: windSpeed_value
                x: -141
                y: 58
                color: "#f6f6f7"
                text: qsTr("0.1 m/s")
                font.pixelSize: 12
            }




        }

        /*
        Item{
            id:seaforce
            Text {
                id: text24
                x: 234
                y: 611
                color: "#3056b8"
                text: qsTr("SEA FORCE")
                font.pixelSize: 12
            }

            Text {
                id: text25
                x: 234
                y: 635
                text: qsTr("0.1 m/s")
                font.pixelSize: 12
            }
            Rectangle {
                id: rectangle4
                x: 175
                y: 189
                width: 75
                height: 58
                color: "#fdfdfd"
                border.color: "#dbdbdb"
            }
        }
        */


    }

    Text {
        id: copyright
        x: 1202
        y: 677
        width: 148
        height: 21
        color: "#f0efef"
        text: qsTr("© 2018 - Syergie")
        elide: Text.ElideLeft
        lineHeight: 1.1
        styleColor: "#f0efef"
        font.family: "Tahoma"
        font.letterSpacing: 0.3
        verticalAlignment: Text.AlignBottom
        font.pixelSize: 17
    }


    Item {
        id: mapGroup
        x: 388
        y: 73
        width: 940
        height: 558

        Map{
            id: map
            x: -387
            y: -28
            width: 920
            height: 506
            color: "#f9f9f9"
            anchors.top: parent.top
            anchors.topMargin: 36
            anchors.left: parent.left
            anchors.leftMargin: 8
            maximumZoomLevel: 29.4
            copyrightsVisible: true
            antialiasing: true
            maximumTilt: 89.3
            plugin: mapPlugin
            center: QtPositioning.coordinate(-6.89, 107.61) // ITB
            zoomLevel: 16
            visible: true
            Rectangle {
                id:trackingMap
                //layer untuk nampilin tracking
                //data dari array tracking-show
                x: 95
                y: 38
                width: 699
                height: 430
                color: "#63ceab"
                opacity: 0.2
                visible: true
            }
        }
    }


    //plugin open Street Map
    Plugin {
        id: mapPlugin
        name: "osm"
        PluginParameter { name: "osm.useragent"; value: "My great Qt OSM application" }
        PluginParameter { name: "osm.mapping.host"; value: "http://osm.tile.server.address/" }
        PluginParameter { name: "osm.mapping.copyright"; value: "All mine" }
        PluginParameter { name: "osm.routing.host"; value: "http://osrm.server.address/viaroute" }
        PluginParameter { name: "osm.geocoding.host"; value: "http://geocoding.server.address" }
        PluginParameter { name: "osm.mapping.providersrepository.address"; value: "satellite"}
    }


    Dialog {
        id: dialog
        x: 21
        y: 90
        width: 110
        height: 139
        title: "TitleDialog"
        standardButtons: Dialog.Ok | Dialog.Cancel

        onAccepted: console.log("Ok clicked")
        onRejected: console.log("Cancel clicked")
    }

    Pane {
        id: pane
        x: 490
        y: 252
        width: 338
        height: 200
        //background: color "#dddddd"
        visible: addbutton.checked


        TextField {
            id: textField
            x: 97
            y: 50
            width: 200
            height: 23
            text: qsTr("-6.89")
            placeholderText: "Longitude"
        }

        TextField {
            id: textField1
            x: 97
            y: 90
            width: 200
            height: 23
            text: qsTr("107.61")
        }

        Text {
            id: text11
            x: 8
            y: 54
            text: qsTr("Latitude")
            renderType: Text.NativeRendering
            font.pixelSize: 12
        }

        Text {
            id: text12
            x: 8
            y: 95
            text: qsTr("Longitude")
            font.pixelSize: 12
        }

        Text {
            id: text13
            x: 8
            y: 9
            width: 157
            height: 16
            text: qsTr("Add Waypoint")
            font.family: "Verdana"
            font.pixelSize: 13
        }

        Button {
            id: add
            x: 216
            y: 143
            width: 81
            height: 27
            text: "add"
            visible: {
                startbutton.checked = false;
                startbutton.checkable = true;
            }
            onClicked: visibleChanged(false)

            Text {
                id: text19
                x: -447
                y: 247
                width: 87
                height: 20
                color: "#313131"
                text: qsTr("mission on")
                font.pixelSize: 16
                visible: add.checked

            }
        }

    }

    Text {
        id: copyright1
        x: 6
        y: 677
        width: 228
        height: 21
        color: "#f0efef"
        text: qsTr("*Made on Earth by Humans*")
        font.pixelSize: 17
        verticalAlignment: Text.AlignBottom
        elide: Text.ElideLeft
        font.letterSpacing: 0.3
        lineHeight: 1.1
        font.family: "roboto"
        styleColor: "#f0efef"
    }

/*
    Rectangle {
        id: button
        x: 92
        y: 218
        property bool checked: false
        property alias text : buttonText.text
        Accessible.name: text
        Accessible.description: "This button does " + text
        Accessible.role: Accessible.Button
        Accessible.onPressAction: {
            button.clicked()
        }

        signal clicked

        width: buttonText.width + 20
        height: 30
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0;
                color: button.focus ? "red" : "blue" }
        }

        radius: 5
        antialiasing: true

        Text {
            id: buttonText
            text: parent.description
            anchors.centerIn: parent
            font.pixelSize: parent.height * .5
            style: Text.Sunken
            color: "white"
            styleColor: "black"
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: parent.clicked()
        }

        Keys.onSpacePressed: clicked()
    }*/


/*
    Button {
        anchors.centerIn: parent
        property string firstfield: "a"
        property string secondfield: "sometext"
        iconSource: ""
        text: firstfield + " " + secondfield
        style: ButtonStyle {
            background: Rectangle {
                id: bg
                border.width: 1
                border.color: palette.mid
                radius: 3
                gradient: Gradient {
                    GradientStop { position: 0.0; color: control.pressed ? palette.button : palette.light }
                    GradientStop { position: 0.5; color: palette.midlight }
                    GradientStop { position: 1.0; color: control.pressed ? palette.light : palette.button }
                }
            }
            label: RowLayout {
                id: row
                spacing: 5
                Image { source: control.iconSource }
                Label {text: control.firstfield; font.family: "Symbol"; font.pixelSize: 18; color: palette.buttonText}
                Label {text: control.secondfield; color: palette.buttonText}

            }
        }
    }

    SystemPalette { id: palette; colorGroup: SystemPalette.Active }

}*/
    /*======Vessel Info Pane=======*/
    Pane {
        id: pane_shipinfo
        x: 400
        y: 112
        width: 338
        height: 350
        //color :  "#1e1b18"
        visible: vesselbutton.checked


        TextField {
            id: textField_vesselinfo
            x: 167
            y: 50
            width: 150
            height: 23
            text: qsTr("Barge")
            placeholderText: "Type"
        }

        TextField {
            id: textField1_vesselinfo
            x: 167
            y: 90
            width: 150
            height: 23
            text: qsTr("50.25 x 21.5")
        }
        TextField {
            id: textField2_vesselinfo
            x: 167
            y: 130
            width: 150
            height: 23
            text: qsTr("N : -6.98")
        }
        TextField {
            id: textField3_vesselinfo
            x: 167
            y: 170
            width: 150
            height: 23
            text: qsTr("E : 107.898989")
        }
        TextField {
            id: textField4_vesselinfo
            x: 167
            y: 210
            width: 150
            height: 23
            text: qsTr("N : -6.98")
        }
        TextField {
            id: textField5_vesselinfo
            x: 167
            y: 250
            width: 150
            height: 23
            text: qsTr("E : 107.898989")
        }
        TextField {
            id: textField6_vesselinfo
            x: 167
            y: 290
            width: 150
            height: 23
            text: qsTr("100 m")
        }

        Text {
            id: text11_vesselinfo
            x: 8
            y: 54
            text: qsTr("Type")
            renderType: Text.NativeRendering
            font.pixelSize: 12
        }

        Text {
            id: text12_vesselinfo
            x: 8
            y: 95
            text: qsTr("Dimension")
            font.pixelSize: 12
        }
        Text {
            id: text14_vesselinfo
            x: 8
            y: 136
            text: qsTr("Position")
            font.pixelSize: 12
        }
        Text {
            id: text15_vesselinfo
            x: 8
            y: 210
            text: qsTr("Next Waypoint")
            font.pixelSize: 12
        }
        Text {
            id: text16_vesselinfo
            x: 8
            y: 290
            text: qsTr("Dist to Next Waypoint")
            font.pixelSize: 12
        }
        Text {
            id: text13_vesselinfo
            x: 8
            y: 9
            width: 157
            height: 16
            text: qsTr("Vessel Info")
            font.family: "Verdana"
            font.pixelSize: 13
        }



    }
    /*======Propeller Info Pane=======*/
    Pane {
        id: pane_propellerinfo
        x: 400
        y: 112
        width: 338
        height: 350
        //color :  "#1e1b18"
        visible: propellerbutton.checked


        TextField {
            id: textField_propellerinfo
            x: 167
            y: 50
            width: 150
            height: 23
            text: qsTr("Azimuth Propeller")
            placeholderText: "Type"
        }

        TextField {
            id: textField1_propellerinfo
            x: 167
            y: 90
            width: 150
            height: 23
            text: qsTr("4")
        }
        TextField {
            id: textField2_propellerinfo
            x: 167
            y: 130
            width: 150
            height: 23
            text: qsTr("200;30")
        }
        TextField {
            id: textField3_propellerinfo
            x: 167
            y: 170
            width: 150
            height: 23
            text: qsTr("200;30")
        }
        TextField {
            id: textField4_propellerinfo
            x: 167
            y: 210
            width: 150
            height: 23
            text: qsTr("200;30")
        }
        TextField {
            id: textField5_propellerinfo
            x: 167
            y: 250
            width: 150
            height: 23
            text: qsTr("200;30")
        }
        TextField {
            id: textField6_propellerinfo
            x: 167
            y: 290
            width: 150
            height: 23
            text: qsTr("100 m")
        }

        Text {
            id: text11_propellerinfo
            x: 8
            y: 54
            text: qsTr("Type")
            renderType: Text.NativeRendering
            font.pixelSize: 12
        }

        Text {
            id: text12_propellerinfo
            x: 8
            y: 95
            text: qsTr("Propeller #")
            font.pixelSize: 12
        }
        Text {
            id: text14_propellerinfo
            x: 8
            y: 136
            text: qsTr("RPM;Azimuth1")
            font.pixelSize: 12
        }
        Text {
            id: text99_propellerinfo
            x: 8
            y: 176
            text: qsTr("RPM;Azimuth2")
            font.pixelSize: 12
        }
        Text {
            id: text15_propellerinfo
            x: 8
            y: 210
            text: qsTr("RPM;Azimuth3")
            font.pixelSize: 12
        }
        Text {
            id: text16_propellerinfo
            x: 8
            y: 250
            text: qsTr("RPM;Azimuth4")
            font.pixelSize: 12
        }
        Text {
            id: text13_propellerinfo
            x: 8
            y: 9
            width: 157
            height: 16
            text: qsTr("Propeller Info")
            font.family: "Verdana"
            font.pixelSize: 13
        }



    }
    /*======Winch Info Pane=======*/
    Pane {
        id: pane_winchinfo
        x: 400
        y: 112
        width: 338
        height: 350
        //color :  "#1e1b18"
        visible: winchbutton.checked


        TextField {
            id: textField_winchinfo
            x: 167
            y: 50
            width: 150
            height: 23
            text: qsTr("Azimuth Propeller")
            placeholderText: "Type"
        }

        TextField {
            id: textField1_winchinfo
            x: 167
            y: 90
            width: 150
            height: 23
            text: qsTr("4")
        }
        TextField {
            id: textField2_winchinfo
            x: 167
            y: 130
            width: 150
            height: 23
            text: qsTr("200;30")
        }
        TextField {
            id: textField3_winchinfo
            x: 167
            y: 170
            width: 150
            height: 23
            text: qsTr("200;30")
        }
        TextField {
            id: textField4_winchinfo
            x: 167
            y: 210
            width: 150
            height: 23
            text: qsTr("200;30")
        }
        TextField {
            id: textField5_winchinfo
            x: 167
            y: 250
            width: 150
            height: 23
            text: qsTr("200;30")
        }
        TextField {
            id: textField6_winchinfo
            x: 167
            y: 290
            width: 150
            height: 23
            text: qsTr("100 m")
        }

        Text {
            id: text11_winchinfo
            x: 8
            y: 54
            text: qsTr("Type")
            renderType: Text.NativeRendering
            font.pixelSize: 12
        }

        Text {
            id: text12_winchinfo
            x: 8
            y: 95
            text: qsTr("Propeller #")
            font.pixelSize: 12
        }
        Text {
            id: text14_winchinfo
            x: 8
            y: 136
            text: qsTr("RPM;Azimuth1")
            font.pixelSize: 12
        }
        Text {
            id: text99_winchinfo
            x: 8
            y: 176
            text: qsTr("RPM;Azimuth2")
            font.pixelSize: 12
        }
        Text {
            id: text15_winchinfo
            x: 8
            y: 210
            text: qsTr("RPM;Azimuth3")
            font.pixelSize: 12
        }
        Text {
            id: text16_winchinfo
            x: 8
            y: 250
            text: qsTr("RPM;Azimuth4")
            font.pixelSize: 12
        }
        Text {
            id: text13_winchinfo
            x: 8
            y: 9
            width: 157
            height: 16
            text: qsTr("Winch Info")
            font.family: "Verdana"
            font.pixelSize: 13
        }



    }

    /*======User Info Pane=======*/
    Pane {
        id: pane_userinfo
        x: 400
        y: 112
        width: 338
        height: 350
        //color :  "#1e1b18"
        visible: userbutton.checked


        TextField {
            id: textField_userinfo
            x: 167
            y: 50
            width: 150
            height: 23
            text: qsTr("Elon Reeve Musk")
            placeholderText: "Type"
        }

        TextField {
            id: textField1_userinfo
            x: 167
            y: 90
            width: 150
            height: 23
            text: qsTr("27 Mei 1996")
        }


        Text {
            id: text11_userinfo
            x: 8
            y: 54
            text: qsTr("Name ")
            renderType: Text.NativeRendering
            font.pixelSize: 12
        }

        Text {
            id: text12_userinfo
            x: 8
            y: 95
            text: qsTr("Date of Birth")
            font.pixelSize: 12
        }

        Text {
            id: text13_userinfo
            x: 8
            y: 9
            width: 157
            height: 16
            text: qsTr("User Info")
            font.family: "Verdana"
            font.pixelSize: 13
        }
        Image {
            id: userinfoIcon
            x: 68
            y: 119
            width: 162
            height: 227
            source: "elonmusk.jpg"
        }



    }

    /*======Submarine Cable Pane=======*/
    Pane {
        id: pane_cableinfo
        x: 400
        y: 112
        width: 338
        height: 350
        //color :  "#1e1b18"
        visible: cablebutton.checked


        TextField {
            id: textField_cableinfo
            x: 167
            y: 50
            width: 150
            height: 23
            text: qsTr("Untung Jawa 20 KV")
            placeholderText: "Type"
        }

        TextField {
            id: textField1_cableinfo
            x: 167
            y: 90
            width: 150
            height: 23
            text: qsTr("5232 m")
        }
        TextField {
            id: textField44_cableinfo
            x: 167
            y: 130
            width: 150
            height: 23
            text: qsTr("100 m")
        }


        Text {
            id: text11_cableinfo
            x: 8
            y: 54
            text: qsTr("Project ")
            renderType: Text.NativeRendering
            font.pixelSize: 12
        }

        Text {
            id: text12_cableinfo
            x: 8
            y: 95
            text: qsTr("Cable Length")
            font.pixelSize: 12
        }
        Text {
            id: text1112_cableinfo
            x: 8
            y: 135
            text: qsTr("Cable Out")
            font.pixelSize: 12
        }

        Text {
            id: text13_cableinfo
            x: 8
            y: 9
            width: 157
            height: 16
            text: qsTr("Cable Info")
            font.family: "Verdana"
            font.pixelSize: 13
        }




    }
}




