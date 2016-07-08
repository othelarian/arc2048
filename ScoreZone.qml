import QtQuick 2.0

Item {
    Rectangle {
        id: scorezone
        x: (!wider) ? gamezone.width : 0
        y: (!wider) ? 0 : gamezone.height
        width: (wider) ? actwidth : actwidth - gamezone.width
        height: (wider) ? actheight - gamezone.height : actheight
        color: "white"

        //
        Text {
            //
            text: "Score :"
        }
        Text {
            id: score
            text: "score"
            //
        }

        //
        Text {
            //
            text: "Best score :"
        }
        Text {
            id: bestscore
            //
            text: "bestscore"
        }

        Text {
            //
            text: "Best level :"
        }
        Text {
            id: bestlevel
            //
            text: "bestlevel"
        }

        Rectangle {
            id: newgame
            //
            //
        }
    }
}
