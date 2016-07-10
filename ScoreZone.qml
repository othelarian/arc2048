import QtQuick 2.0

import "engine.js" as Game

Rectangle {
    property int rectsize: height/6
    property int fontsize: rectsize/3

    property string debugstr: "none"

    id: scorezone
    x: (!wider) ? gamezone.width : 0
    y: (!wider) ? 0 : gamezone.height
    width: (wider) ? actwidth : actwidth - gamezone.width
    height: (wider) ? actheight - gamezone.height : actheight
    color: "white"

    Rectangle {
        width: parent.width
        height: rectsize
        y: 0

        Text {
        anchors.centerIn: parent
        font.bold: true
        font.pixelSize: fontsize
        text: "Score : "+curscore
        }
    }

    Rectangle {
        width: parent.width
        height: rectsize
        y: rectsize

        Text {
        anchors.centerIn: parent
        font.bold: true
        font.pixelSize: fontsize
        text: "Best : "+bestscore
        }
    }

    Rectangle {
        width: parent.width
        height: rectsize
        y: rectsize*2

        Text {
        anchors.centerIn: parent
        font.bold: true
        font.pixelSize: fontsize
        text: "High level : "+highlvl
        }
    }

    Rectangle {
        id: newGameBtn
        width: (parent.width/10)*7
        height: rectsize
        x: (parent.width/20)*3
        y: rectsize*4
        color: "#ccc"

        MouseArea {
            anchors.fill: parent
            onClicked: { Game.toggleInitDiag() }
        }

        Text {
            id: newGameText
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: fontsize
            text: "New Game"
        }
    }
}
