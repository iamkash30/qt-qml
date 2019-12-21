import QtQuick 2.0

DisplayText {
    id: receiveButton

    function receive(value) {
        displayText = value
        receiveButton.displayColor = getRandomColor()
        clicknotify.running = true
    }

    function getRandomColor() {
      var letters = '0123456789ABCDEF';
      var color = '#';
      for (var i = 0; i < 6; i++ ) {
        color += letters[Math.floor(Math.random() * 16)];
      }
      return color;
    }

    SequentialAnimation on displayColor {
        id: clicknotify

        ColorAnimation {
            from: getRandomColor()
            to: getRandomColor()
            duration: 500
        }
        running: false
    }
}
