import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 1.4
import FileHelpers 1.0

Window {
    id: appWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    FileHelper {
        id: helper
    }
    
    Rectangle {
        id: container
        width: parent.width / 2
        height: parent.height / 2
        anchors.centerIn: parent
        TextField {
            id: mTextInput
            text: "Write your message here"
            anchors {
                top: parent.top
                right: parent.center
            }


        }
        TextArea {
            id: mTextOutput
            anchors {
                top: mTextInput.bottom
                right: parent.right
            }


        }

        Rectangle {
            id: mButton
            width: 100
            height: 20
            color: "green"
            Text {
                id: btnTxt
                text: qsTr("Write to File")
                color: "white"
                anchors.centerIn: parent
            }

            anchors {
                top: mTextInput.bottom
                left: parent.right
            }

            MouseArea {
                id: maWrite
                anchors.fill: parent

                onClicked: {
                    helper.writeFile(mTextInput.text)
                }


            }

        }
        Rectangle {
            id: mButton1
            width: 100
            height: 20
            color: "green"
            Text {
                id: btnTxt1
                text: qsTr("Read from File")
                color: "white"
                anchors.centerIn: parent
            }

            anchors {
                top: mTextOutput.top
                right: parent.right
            }

            MouseArea {
                id: maRead
                anchors.fill: parent

                onClicked: {
                    mTextOutput.text=helper.readFile()

                }


            }

        }


    }


}
