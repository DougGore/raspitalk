var charComponent;
var charObj;

function randomColour()
{
    var hexArray = new Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F");

    var bg = "#" +
         hexArray[Math.floor(Math.random() * hexArray.length)] +
         hexArray[Math.floor(Math.random() * hexArray.length)] +
         hexArray[Math.floor(Math.random() * hexArray.length)] +
         hexArray[Math.floor(Math.random() * hexArray.length)] +
         hexArray[Math.floor(Math.random() * hexArray.length)] +
         hexArray[Math.floor(Math.random() * hexArray.length)];

    return bg;
}

function generateTextObject(key) {
    console.log("Key pressed " + key);

    charComponent = Qt.createComponent("char.qml");

    charObj = charComponent.createObject(textmashWindow);

    charObj.x = Math.floor(1 + (1280 * Math.random())) - 40;
    charObj.y = Math.floor(1 + (720 * Math.random())) - 40;

    charObj.text = String.fromCharCode(key);

    charObj.color = randomColour();



    if (charObj == null)
    {
        // Error Handling
        console.log("Error creating object");
    }
}
