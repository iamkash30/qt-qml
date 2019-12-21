import QtQuick 2.4

Item {
    id: clickMeBtn
    width: 83
    height: 52
    property alias buttonImageSource: buttonImage.source

    Image {
        id: buttonImage
        antialiasing: true
        anchors.fill: parent
        source: "qrc:/assets/button_up.png"
        fillMode: Image.PreserveAspectFit

        Text {
            id: buttonText
            x: 138
            y: 19
            color: "#ffffff"
            text: qsTr("Click me!")
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 16
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
        }
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:52;anchors_width:83;anchors_x:0;anchors_y:8}
}
##^##*/

