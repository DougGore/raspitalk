import QtQuick 2.0

Text {
    id: textChar
    text: "X"
    font.family: "Calibri"
    font.bold: true
    font.pointSize: 36 + (Math.random() * 96)
    color: "green"
    style: Text.Outline
    styleColor: "black"
    x: 200
    y: 200
    rotation: -45 + (Math.random() * 90)
    smooth: true

    NumberAnimation on opacity {
        to: 0
        duration: 5000

        onRunningChanged: {
            if (!running)
            {
                textChar.destroy();
            }
        }
    }
}
