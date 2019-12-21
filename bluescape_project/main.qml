import QtQuick 2.13
import QtQuick.Window 2.13
import com.bluescape.project 1.0

Window {
    id: window
    visible: true
    width: 300
    height: 301
    opacity: 1

    ReadFile {
        id: readfile
    }

    BluescapeBackgroundForm {
        id: bluescapeBackgroundForm
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

        BluescapeLogo {
            id: bluescapeLogo
            x: 192
            width: 100
            height: 60
            anchors.top: parent.top
            anchors.topMargin: 8
            anchors.right: parent.right
            anchors.rightMargin: 8
        }

        Receiver {
            id: receiver
            y: 85
            displayText: "BLUESCAPE ROCKS!"
            anchors.left: parent.left
            anchors.leftMargin: 25
            anchors.right: parent.right
            anchors.rightMargin: 25
        }

        Sender {
            id: sender
            y: 200
            anchors.left: parent.left
            anchors.leftMargin: 109
            anchors.right: parent.right
            anchors.rightMargin: 108
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 49
            target: receiver
        }
    }
}





/*##^##
Designer {
    D{i:3;anchors_height:60;anchors_width:100;anchors_x:192;anchors_y:8}D{i:4;anchors_x:25}
D{i:5;anchors_x:109}D{i:2;anchors_x:0;anchors_y:0}
}
##^##*/
