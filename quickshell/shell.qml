import QtQuick // for Text
import Quickshell // for PanelWindow

PanelWindow {
    id: island_div

    property bool isExpanded: false
    property int defHeight: 30
    property int defWidth: 250
    property int expandedHeight: 70
    property int expandedWidth: 400

    implicitHeight: expandedHeight
    implicitWidth: expandedWidth
    color: "transparent"
    // This disables the space reservation
    exclusiveZone: defHeight
    aboveWindows: true

    anchors {
        top: true
    }

    margins {
        top: 2
    }

    Rectangle {
        id: island

        anchors.horizontalCenter: parent.horizontalCenter
        implicitWidth: defWidth
        implicitHeight: defHeight
        // anchors.fill: parent
        color: "#1a1a1a"
        // Your background color goes here
        radius: 15
        // This is where you set the rounding
        // Optional: keeps content from bleeding out of the rounded corners
        clip: true

        Text {
            anchors.centerIn: parent
            // text: "Dynamic Island"
            color: "#ffffff"
        }

        MouseArea {
            // island_div.implicitHeight = (island_div.implicitHeight == 30) ? 300 : 30;

            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor // Optional: changes cursor to hand
            onClicked: {
                // island.color = (island.color == "#1a1a1a") ? "transparent" : "#1a1a1a";

                console.log("Dynamic Island clicked!");
                if (isExpanded == true) {
                    island.implicitHeight = defHeight;
                    island.implicitWidth = defWidth;
                    isExpanded = false;
                } else {
                    island.implicitHeight = expandedHeight;
                    island.implicitWidth = expandedWidth;
                    isExpanded = true;
                }
            }
        }

        Behavior on implicitHeight {
            NumberAnimation {
                duration: 250
                easing.type: Easing.InOutQuad
            }

        }

        Behavior on implicitWidth {
            NumberAnimation {
                duration: 250
                easing.type: Easing.InOutQuad
            }

        }

    }

}
