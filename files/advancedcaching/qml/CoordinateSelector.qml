
import com.nokia.meego 1.0
import com.nokia.meego 1.0 as Nokia
import QtQuick 1.1
import "uiconstants.js" as UI

QueryDialog {
    id: test
    //content: [CoordinateSelector{ anchors.centerIn: parent }]
    anchors.centerIn: parent
    acceptButtonText: "OK"
    rejectButtonText: "cancel"
    titleText: "Edit Coordinate"
    // todo: Gesamtwert berechnen

    content: [
        MouseArea {
            anchors.fill: selectColumn
            onClicked: {  }
            }, 
        Column {
        id: selectColumn
        spacing: 10
        // Longitude
    	Button {
    	    value: 1
            text: (value > 0) ? "N" : "S"
            font.pixelSize: UI.FONT_LARGE
            onClicked: { value =  -value }
            //anchors.verticalCenter: parent.verticalCenter
            width: UI.WIDTH_SELECTOR
        }
        Row {
            
            UpDownSelect {
                id: lon1
                max: 1
            }

            UpDownSelect {
                id: lon2
            }

            UpDownSelect {
                id: lon3
            }
            Text {
                text: "."
                font.pixelSize:  UI.FONT_LARGE
                anchors.verticalCenter: parent.verticalCenter
                color: "white"
            }

            UpDownSelect {
                id: lon4
            }

            UpDownSelect {
                id: lon5
            }

            Rectangle {
                height: 30
                color: "transparent"
                width: UI.WIDTH_SELECTOR/3
            }

            UpDownSelect {
                id: lon6
            }

            UpDownSelect {
                id: lon7
            }

            UpDownSelect {
                id: lon8
            }
        }
        Button {
            text: (value > 0) ? "E" : "W"
            font.pixelSize: UI.FONT_LARGE
            onClicked: { value = -value }
            width: UI.WIDTH_SELECTOR
            //anchors.verticalCenter: parent.verticalCenter
        }
        Row {
            UpDownSelect {
                id: lat1
                max: 1
            }

            UpDownSelect {
                id: lat2
            }

            Text {
                text: "."
                font.pixelSize:  UI.FONT_LARGE
                color: "white"
                anchors.verticalCenter: parent.verticalCenter
            }

            UpDownSelect {
                id: lat3
            }

            UpDownSelect {
                id: lat4
            }

            Rectangle {
                height: 30
                color: "transparent"
                width: UI.WIDTH_SELECTOR/3
            }

            UpDownSelect {
                id: lat5
            }

            UpDownSelect {
                id: lat6
            }

            UpDownSelect {
                id: lat7
            }
        }
    }]
}