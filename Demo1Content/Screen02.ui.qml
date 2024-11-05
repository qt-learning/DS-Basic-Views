

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.7
import QtQuick.Controls 6.7
import Demo1
import QtQuick3D 6.7
import QtQuick.Timeline 1.0
import QtQuick.Studio.Components 1.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    View3D {
        id: view3D
        width: 600
        height: 600
        anchors.verticalCenter: parent.verticalCenter
        scale: 0.1
        anchors.horizontalCenter: parent.horizontalCenter
        environment: sceneEnvironment
        SceneEnvironment {
            id: sceneEnvironment
            antialiasingQuality: SceneEnvironment.High
            antialiasingMode: SceneEnvironment.MSAA
        }

        Node {
            id: scene

            PerspectiveCamera {
                id: sceneCamera
                x: -0
                y: 0
                z: 750
            }

            Model {
                id: cubeModel
                source: "#Cube"
                materials: principledMaterial
                eulerRotation.y: 45
                eulerRotation.x: 30
            }

            PointLight {
                id: pointLight
                x: -147.654
                y: 0
                z: 115.00816
            }

            PointLight {
                id: pointLight1
                x: 250
                y: 0
                z: 150
            }

            Model {
                id: cubeModel1
                x: -350
                y: 150
                source: "#Cube"
                z: -550
                materials: red
                eulerRotation.y: 45
                eulerRotation.x: 30
            }

            Model {
                id: cubeModel2
                x: 450
                y: 250
                source: "#Cube"
                z: -1350
                materials: green
                eulerRotation.y: 45
                eulerRotation.x: 30
            }

            PointLight {
                id: pointLight2
                x: 250
                y: 100
                brightness: 0.5
                quadraticFade: 0.31405
                z: -1200
            }

            PointLight {
                id: pointLight3
                x: -300
                y: 100
                brightness: 0.5
                quadraticFade: 0.29603
                z: -250
            }
        }
    }

    Item {
        id: __materialLibrary__

        PrincipledMaterial {
            id: principledMaterial
            baseColor: "#0c00ff"
            objectName: "New Material"
        }

        PrincipledMaterial {
            id: red
            baseColor: "#ff0000"
            objectName: "red"
        }

        PrincipledMaterial {
            id: green
            objectName: "green"
            baseColor: "#2cff00"
        }
    }

    states: [
        State {
            name: "clicked"
        }
    ]

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: true
                loops: 1
                duration: 2000
                to: 2000
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 2000
        enabled: true

        KeyframeGroup {
            target: view3D
            property: "scale"

            Keyframe {
                value: 1
                easing.bezierCurve: [0.165, 0.84, 0.44, 1, 1, 1]
                frame: 2006
            }

            Keyframe {
                value: 0.1
                easing.bezierCurve: [0.165, 0.84, 0.44, 1, 1, 1]
                frame: 0
            }
        }
    }
}

/*##^##
Designer {
    D{i:0}D{i:1}D{i:3;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/

