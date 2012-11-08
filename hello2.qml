import QtQuick 2.0

Rectangle
{
	id: main
	width: 1280
	height: 720
	color: "white"
	
	Text
	{
		id: finish
		text: "You see, it's really easy to do fancy animations using Qt5 and it has the bonus of being super smooth :-)"
        font.pointSize: 36
        wrapMode: Text.WordWrap
		y: parent.height
        x: 400
        width: parent.width - 400
	}
	
    Text {
        id: hello
        text: "Hello, world"
        font.family: "Helvetica"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 48
        //font.letterSpacing: 40
        color: "black"
        //width: parent.width
		x: (parent.width / 2) - (hello.width / 2)
        y: (parent.height / 2) - (hello.height / 2)
		
		SequentialAnimation
		{
			running: true
			
			NumberAnimation
			{
				target: hello
				property: "opacity"
				from: 0.0
				to: 1.0
				duration: 5000
			}

			NumberAnimation
			{
				target: hello
				property: "scale"
				from: 1.0
				to: 3.5
				duration: 2000
			}
			
			ParallelAnimation
			{
				RotationAnimation
				{
					target: hello
					direction: RotationAnimation.Counterclockwise
					from: 0
					to: 270
					duration: 2000
				}
				
				NumberAnimation
				{
					target: hello
					property: "scale"
					from: 3.5
					to: 2.0
					duration: 2000
				}
				
				NumberAnimation
				{
					target: hello
					property: "x"
					to: 20
					duration: 2000
				}
				

				ColorAnimation
				{
					target: hello
                    to: "#FF0000"
					duration: 2000
				}

			}
			
			NumberAnimation
			{
				target: finish
				property: "y"
				to: 0
				duration: 5000
			}
		}
    }
}
