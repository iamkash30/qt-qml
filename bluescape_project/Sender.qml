import QtQuick 2.0

ClickMeButton {
    id: sendButton

    property Receiver target: null

    signal send(string value)
    onTargetChanged: send.connect(target.receive)

    MouseArea {
        anchors.fill: parent

        onClicked: {
            readfile.readWordFromFile()
            parent.send(readfile.display)
        }

        onPressed: {
            sendButton.buttonImageSource = "assets/button_down.png"
        }

        onReleased: {
            sendButton.buttonImageSource = "assets/button_up.png"
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
