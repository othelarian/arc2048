import QtQuick 2.7
import QtQuick.Window 2.2
import Qt.labs.settings 1.0

import "engine.js" as Game

Window {
    property int actwidth: width
    property int actheight: height
    property bool wider: actwidth < actheight
    property int squaresize: gamezone.width/4
    property int squarefont: squaresize/4
    property int curscore: 100
    property int bestscore: 2340
    property int highlvl: 512

    width: 350
    height: 200
    visible: true

    Settings {
        //
        //
    }

    Rectangle {
        id: gamezone
        width: (wider) ? actwidth : actheight
        height: (wider) ? actwidth : actheight
        color: "#ccc"
        focus: true

        Keys.onPressed: {
            if (event.key == Qt.Key_Up) { Game.setUp() }
            if (event.key == Qt.Key_Down) { Game.setDown() }
            if (event.key == Qt.Key_Right) { Game.setRight() }
            if (event.key == Qt.Key_Left) { Game.setLeft() }
        }

        MouseArea {
            property int posX: 0
            property int posY: 0

            anchors.fill: parent
            hoverEnabled: false

            onPressed: { posX = mouseX; posY = mouseY; }
            onReleased: {
                var movX = (mouseX<posX)? posX-mouseX : mouseX-posX
                var movY = (mouseY<posY)? posY-mouseY : mouseY-posY
                var minimp = parent.width/8;
                if (movX<minimp && movY<minimp) {}
                else {
                    if (movX>movY) {
                        (mouseX<posX)? Game.setLeft() : Game.setRight()
                    }
                    else {
                        (mouseY<posY)? Game.setUp() : Game.setDown()
                    }
                }
            }
        }

        Grid {
            columns: 4
            rows: 4
            columnSpacing: squaresize*0.05
            rowSpacing: squaresize*0.05
            topPadding: squaresize*0.025
            leftPadding: squaresize*0.025

            Repeater {
                id: boxrepeater
                //
                model: [
                    ["","white"],["","white"],["","white"],["","white"],
                    ["","white"],["","white"],["","white"],["","white"],
                    ["","white"],["","white"],["","white"],["","white"],
                    ["","white"],["","white"],["","white"],["","white"]
                ]
                //

                Rectangle {
                    width: squaresize *0.95
                    height: squaresize *0.95
                    radius: 5
                    color: modelData[1]

                    Text {
                        anchors.centerIn: parent
                        font.pixelSize: squarefont
                        text: modelData[0]
                    }
                }
            }
        }
    }

    ScoreZone {id: scorezone}

    InitDialog {id: initdiag; visible: false}
}
