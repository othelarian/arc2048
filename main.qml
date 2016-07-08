import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    property int actwidth: width
    property int actheight: height
    property bool wider: actwidth < actheight
    width: 350
    height: 200
    visible: true

    Rectangle {
        id: gamezone
        width: (wider) ? actwidth : actheight
        height: (wider) ? actwidth : actheight
        color: "#ccc"
        focus: true

        Keys.onPressed: {
            if (event.key == Qt.Key_Down) {
                //
                //
                testtext.text = "down"
                //
            }
            if (event.key == Qt.Key_Up) testtext.text = "up"
            if (event.key == Qt.Key_Right) testtext.text = "right"
            if (event.key == Qt.Key_Left) testtext.text = "left"
        }

        //
        // TODO : add the grid
        //
    }

    ScoreZone {}
}
