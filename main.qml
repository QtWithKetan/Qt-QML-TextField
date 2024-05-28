import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    TextField
    {
        id:myTextField
        width: 500
        height: 50
        anchors.centerIn: parent
        placeholderText: "Enter Text Here ... "
        font.pointSize: 20

        validator: RegExpValidator { regExp: /[0-9]+/ }
        echoMode: "Password"
        passwordCharacter: "."

        // Set Your Color Font Color
        color: "#574b90"

        onTextChanged:
        {
            console.log("Text Changed Data : ", myTextField.text)
        }

        background: Rectangle
        {
            // Define You TextField Active Color And Deactive color
            border.color : myTextField.activeFocus ? "#e15f41" : "#303952"
            border.width : 2
            radius: 5
        }
    }
}
