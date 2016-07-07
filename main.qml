import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    property int actwidth: width
    property int actheight: height
    width: 800
    height: 600
    visible: true

    Rectangle {
        id: gamezone
        width: (actwidth < actheight) ? actwidth : actheight
        height: (actwidth < actheight) ? actwidth : actheight
        //
        color: "red"
    }

    Rectangle {
        id: scorezone
        width: parent.width
        //
        color: "blue"
    }
}
