import QtQuick 2.4

Item {
    width: 100
    height: 60

    Image {
        id: image
        x: 0
        y: 0
        width: 100
        height: 60
        fillMode: Image.PreserveAspectFit
        source: "qrc:/assets/bluescape-logo.svg"
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:100;anchors_width:100;anchors_x:50;anchors_y:0}
}
##^##*/

