import QtQuick 2.0

import "engine.js" as Game

Rectangle {
    anchors.fill: parent
    color: "#44000000"

    Rectangle {
        id: rectangle1
        width: actwidth*0.6
        height: (wider)? actwidth*0.6 : actheight*0.6
        x: actwidth*0.2
        y: actheight*0.2
        color: "white"

        Text {
            x: parent.width/2 - width/2
            y: 20
            horizontalAlignment: Text.AlignHCenter
            text: "launch new game ?"
        }

        Rectangle {
            width: parent.width*0.4
            height: (wider)? actwidth*0.2 : actheight*0.2
            color: "#ccc"
            anchors.left: parent.left
            anchors.leftMargin: 15
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15

            Text {
                anchors.centerIn: parent
                text: "Yes"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: { Game.initPlay() }
            }
        }

        Rectangle {
            width: parent.width*0.4
            height: (wider)? actwidth*0.2 : actheight*0.2
            color: "#ccc"
            anchors.right: parent.right
            anchors.rightMargin: 15
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15

            Text {
                anchors.centerIn: parent
                text: "No"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: { Game.toggleInitDiag() }
            }
        }
    }
}
