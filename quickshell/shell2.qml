import Quickshell
import QtQuick

ShellRoot {
    PanelWindow {
        // Essential anchoring for an operating system top bar
        anchors {
            top: true
            left: true
            right: true
        }
        
        // Tells Quickshell to reserve desktop space (exclusive zone) so windows won't overlap it
        implicitHeight: 40

        // Background styling
        Rectangle {
            color: "#1a1a1a"
            anchors.fill: parent

            Row {
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.verticalCenter: parent.verticalCenter
                spacing: 15

                Text {
                    text: "My Shell v0.3.0"
                    color: "white"
                    font.bold: true
                }
                
                SystemClock {
                    id: clock
                    precision: SystemClock.Seconds
                }
                
                Text {
                  text: Qt.formatDateTime(clock.date, "hh:mm:ss - yyyy-MM-dd")
                  color: "#dddddd"
                }
            }
        }
    }
}

