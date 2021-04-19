import QtQuick 2.12
import QtQuick.Window 2.12
//fel3
import QtQuick.Controls 2.5
Window {
    width: 640
    height: 480
    visible: true
    //color: white

    //fel3

    Slider{
        id:slide
        width: parent.width
        from: 0 //minimumValue : 0
        to : 360 //maximumValue : 360
        value: 0
        stepSize: 1.0
        enabled: true
        onValueChanged: {
            recCenter.rotation = slide.value
        }
    }

    //fel2
//    MouseArea{
//        anchors.fill: parent
//        onClicked: {
//            recCenter.width = parent.width / 4
//            recCenter.height = parent.height / 4
//        }
//    }

    Rectangle{
        id: recCenter
        width: parent.width /3
        height: parent.width /3
        color: "green"
        anchors.centerIn: parent

        GreenBox{
            id: recTopLeft
            anchors.right: recCenter.left
            anchors.bottom: recCenter.top
        }

        GreenBox{
            id: recLeft
            anchors.right: recCenter.left
            anchors.verticalCenter: recCenter.verticalCenter
        }

        GreenBox{
            id: recBottomLeft
            anchors.right: recCenter.left
            anchors.top: recCenter.bottom
        }

        GreenBox{
            id: recTopCenter
            anchors.horizontalCenter: recCenter.horizontalCenter
            anchors.bottom: recCenter.top
        }

        GreenBox{
            id: recTopRight
            anchors.left: recCenter.right
            anchors.bottom: recCenter.top
        }

        GreenBox{
            id: recRight
            anchors.left: recCenter.right
            anchors.verticalCenter: recCenter.verticalCenter
        }

        GreenBox{
            id: recBottom
            anchors.horizontalCenter: recCenter.horizontalCenter
            anchors.top: recCenter.bottom
        }

        GreenBox{
            id: recBottomRight
            anchors.left: recCenter.right
            anchors.top: recCenter.bottom
        }

        GreenBox{
            id: recMiddle
            anchors.centerIn: recCenter
        }
    }
}
