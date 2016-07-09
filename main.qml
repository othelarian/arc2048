import QtQuick 2.7
import QtQuick.Window 2.2

import "engine.js" as Game

Window {
    property int actwidth: width
    property int actheight: height
    property bool wider: actwidth < actheight
    property int curscore: 100
    property int bestscore: 2340
    property int highlvl: 512

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
            if (event.key == Qt.Key_Up) {
                //
                Game.setUp();
                //
            }
            if (event.key == Qt.Key_Down) {
                //
                //
                testtext.text = "down"
                //
            }
            if (event.key == Qt.Key_Right) testtext.text = "right"
            if (event.key == Qt.Key_Left) testtext.text = "left"
        }

        //
        // TODO : add the grid
        //
    }

    ScoreZone {id: scorezone}
}
