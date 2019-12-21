import QtQuick 2.4

Item {
    width: 300
    height: 301

    Image {
        id: bluescape_bg
        width: 300
        anchors.fill: parent
        source: "qrc:/assets/bg.png"
        fillMode: Image.PreserveAspectCrop
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:100;anchors_width:100;anchors_x:270;anchors_y:144}
}
##^##*/

