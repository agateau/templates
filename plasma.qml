import QtQuick 1.1

import org.kde.plasma.core 0.1 as PlasmaCore
import org.kde.plasma.components 0.1 as PlasmaComponents

PlasmaCore.FrameSvgItem {
    imagePath: "dialogs/background"
    width: 400
    height: 300

    Item {
        anchors {
            fill: parent
            leftMargin: parent.margins.left
            topMargin: parent.margins.top
            rightMargin: parent.margins.right
            bottomMargin: parent.margins.bottom
        }
    }
}
