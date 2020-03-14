    Text {
        text: "root: " + stringForSize(root) + "\nView parent: " + stringForSize(deviceView.parent) + "\nView: " + stringForSize(deviceView)
        color: "white"
    }
    function stringForSize(item) {
        return item.width + "x" + item.height;
    }
