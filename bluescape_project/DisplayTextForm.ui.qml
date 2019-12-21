import QtQuick 2.4

Item {
    id: displayLabel
    width: 250
    height: 50
    property alias displayColor: display.color
    property alias displayText: display.text

    Rectangle {
        id: receiver
        width: 200
        color: "#00ff0000"
        anchors.fill: parent

        Text {
            id: display
            x: 163
            y: 28
            color: "#0ca20e"
            text: qsTr("Text")
            font.capitalization: Font.AllUppercase
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.bold: true
            font.pixelSize: 30
        }
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:80;anchors_y:8}
}
##^##*/

