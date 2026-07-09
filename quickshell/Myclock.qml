import QtQuick
import Quickshell
import Quickshell.Io

Text {
    // id to refer it later
    // use a timer to rerun the process at an interval

    id: clock

    color: "#ffffff"
    anchors.centerIn: parent

    Process {
        // give the process object an id so we can talk
        // about it from the timer

        id: dateProc

        command: ["date"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: clock.text = this.text
        }

    }

    Timer {
        // 1000 milliseconds is 1 second
        // start the timer immediately
        // run the timer again when it ends
        // when the timer is triggered, set the running property of the
        // process to true, which reruns it if stopped.

        interval: 1000
        running: true
        repeat: true
        onTriggered: dateProc.running = true
    }

}
