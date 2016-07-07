import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    property int actwidth: width
    property int actheight: height
    property bool wider: actwidth < actheight
    width: 800
    height: 600
    visible: true

    Rectangle {
        id: gamezone
        width: (wider) ? actwidth : actheight
        height: (wider) ? actwidth : actheight
        color: "#ccc"

        Grid {
            //
            //
        }

        //
    }

    Rectangle {
        id: scorezone
        x: (!wider) ? gamezone.width : 0
        y: (!wider) ? 0 : gamezone.height
        width: (wider) ? actwidth : actwidth - gamezone.width
        height: (wider) ? actheight - gamezone.height : actheight
        color: "blue"

        //
        //
    }
}
