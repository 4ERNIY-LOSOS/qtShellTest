import Quickshell
import QtQuick

// Use a ShellRoot to contain our window. This is good practice.
ShellRoot {

    // A PanelWindow is a special window for bars and widgets.
    PanelWindow {
        // Anchor the window to the top, left, and right edges of the screen.
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right

        // Give the bar a height.
        implicitHeight: 32

        // Use a Rectangle for the background color.
        Rectangle {
            anchors.fill: parent
            color: "#222222" // A dark grey color for the bar
        }

        // A Text element to display the time.
        Text {
            id: clockText

            // Center the text in the bar.
            anchors.centerIn: parent

            // Use the built-in SystemClock for the time.
            // This is more efficient than running a process every second.
            readonly property SystemClock clock: SystemClock {
                precision: SystemClock.Seconds
            }

            // Format the time nicely.
            text: Qt.formatDateTime(clock.date, "hh:mm:ss")

            // Set the text color.
            color: "white"
            font.pixelSize: 16
        }
    }
}
