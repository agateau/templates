Item {
    id: debug
    z: 1000
    property var vars: {
        "tableView.height": tableView.height,
        "header.height": LaunchpadStyle.deviceTable.header.height,
        "row.height": LaunchpadStyle.deviceTable.row.height,
        "rowCount": tableView.rowCount
    }
    Rectangle {
        color: "black"
        anchors {
            fill: debugText
            margins: -8
        }
        opacity: 0.6
    }
    Text {
        id: debugText
        color: "white"
        text: formatDebugText()

        function formatDebugText() {
            var text = "";
            var first = true;
            for (var key in debug.vars) {
                var value = debug.vars[key];
                if (first) {
                    first = false;
                } else {
                    text += "\n";
                }
                text += key + "=" + value;
            }
            return text;
        }
    }
}
