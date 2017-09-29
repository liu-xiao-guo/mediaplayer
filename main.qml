import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtMultimedia 5.8
 import QtQuick.Dialogs 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Video Player")

    FileDialog {
         id: fileDialog
         title: "Please choose a file"
         folder: shortcuts.home
         onAccepted: {
             console.log("You chose: " + fileDialog.fileUrls)
             var path = "" + fileDialog.fileUrl
             var fileName = path.replace("file://", "")
             console.log("fileName: " + fileName)
             mymediaplayer.fileName = fileName
             mymediaplayer.play()
         }
         onRejected: {
             console.log("Canceled")
         }
         Component.onCompleted: visible = true
     }

    VideoOutput {
        id: videooutput
        anchors.fill: parent
        source: mymediaplayer
    }
}
