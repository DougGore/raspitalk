import QtQuick 2.0

Rectangle
{
    width: 1280
    height: 720

    Image {
        id: background
        source: "images/backgrounds/lights.jpg"
    }

    Component
    {
        id: menuHighlight
        Rectangle
        {
            border.color: "#80AAAADD"
            border.width: 2
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#BBBBBBDD" }
                GradientStop { position: 1.0; color: "#888888DD" }
            }
            width: 200
            height: 200
            radius: 20
        }
    }

    GridView {
        id: mainMenu
        x: 0
        y: 0
        anchors.fill: parent
        flickableDirection: Flickable.HorizontalFlick
        flow: GridView.TopToBottom
        focus: true
        cellHeight: 360
        cellWidth: 420
        highlight: menuHighlight

        delegate: Item {
            x: 5
            width: 400
            height: 340

            MouseArea
            {
                anchors.fill: parent
                onClicked: pageLoader.source = "applications/" + page
            }

            Keys.onPressed:
            {
                if ((event.key == Qt.Key_Return) || (event.key == Qt.Key_Space))
                {
                    pageLoader.source = "applications/" + page
                }
            }

            Image {
                y: 20
                id: myIcon
                source: icon
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                x: 5
                text: name
                anchors.top: myIcon.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                font.pointSize: 16
                color: "#222222"
            }

            ParallelAnimation
            {
                running: true

                NumberAnimation {
                    target: myIcon
                    property: "opacity"
                    from: 0
                    to: 1
                    duration: 300
                }

                NumberAnimation {
                    target: myIcon
                    property: "scale"
                    from: 0
                    to: 1
                    duration: 300
                }
            }
        }

        model: ListModel {
            ListElement {
                name: "News"
                icon: "images/icons/news.png"
                page: "rssnews/rssnews.qml"
            }

            ListElement {
                name: "Games"
                icon: "images/icons/gaming_pad.png"
                page: "snakes_and_ladders/SnakesLadders.qml"
            }

            ListElement {
                name: "Applications"
                icon: "images/icons/Sys-Program-icon.png"
                page: "applications.qml"
            }

            ListElement {
                name: "Music"
                icon: "images/icons/music.png"
            }

            ListElement {
                name: "Photos"
                icon: "images/icons/images.png"
                page: "photo_viewer/Photo.qml"
            }

            ListElement {
                name: "Videos"
                icon: "images/icons/movies.png"
            }

            ListElement {
                name: "Creative"
                icon: "images/icons/brush.png"
            }

            ListElement {
                name: "Design"
                icon: "images/icons/Layers-icon.png"
            }

            ListElement {
                name: "System"
                icon: "images/icons/Layers-icon.png"
                page: "system/menu.qml"
            }
        }
    }
}
