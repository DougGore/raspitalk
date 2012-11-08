import QtQuick 2.0
import "textmash.js" as TM

Rectangle {
    id: textmashWindow
    width: 1280
    height: 720
    color: "white"
    focus: true
    Keys.onPressed: TM.generateTextObject(event.key)
}
