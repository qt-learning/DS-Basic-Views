

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
import QtQuick3D.Helpers 6.7

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor
    property alias cubeModel1EulerRotationy: redCube.eulerRotation.y

    View3D {
        id: view3D
        anchors.fill: parent
        scale: 1
        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            backgroundMode: SceneEnvironment.Color
        }

        Node {
            id: scene

            PerspectiveCamera {
                id: sceneCamera
                x: 0
                y: 0
                eulerRotation.z: 0
                eulerRotation.y: 0
                eulerRotation.x: 0
                z: 354.40002
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
                brightness: 3.54
                quadraticFade: 0.29603
                z: -250
            }

            Node {
                id: rectangles

                Model {
                    id: redCube
                    x: -374.913
                    y: 192.718
                    source: "#Cube"
                    z: -629.72461
                    materials: red
                    eulerRotation.y: 60
                    eulerRotation.x: 30
                }

                Model {
                    id: blueCube
                    x: 0
                    y: 0
                    source: "#Cube"
                    z: 0
                    receivesReflections: false
                    materials: blue
                    eulerRotation.y: 45
                    eulerRotation.x: 45
                }

                Model {
                    id: greenCube
                    x: 580.724
                    y: 258.163
                    source: "#Cube"
                    eulerRotation.z: 15
                    z: -1219.27625
                    materials: green
                    eulerRotation.y: 45
                    eulerRotation.x: 30
                }
            }
        }
    }

    Item {
        id: __materialLibrary__

        PrincipledMaterial {
            id: blue
            heightChannel: Material.A
            emissiveFactor.x: 0
            roughness: 0
            heightAmount: 0
            normalStrength: 1
            baseColor: "#0c00ff"
            objectName: "blue"
        }

        SpecularGlossyMaterial {
            id: red
            clearcoatAmount: 0.7
            lighting: SpecularGlossyMaterial.FragmentLighting
            specularColor: "#f25252"
            glossiness: 0.4
            albedoColor: "#ff0000"
            objectName: "red"
        }

        PrincipledMaterial {
            id: green
            opacity: 1
            indexOfRefraction: 1.4
            transmissionFactor: 1
            metalness: 0.2
            roughness: 0.5
            occlusionAmount: 1
            objectName: "green"
            baseColor: "#2cff00"
        }

        Texture {
            id: unravel_logo_bitmap_large_WHITE
            source: "images/Unravel_logo_bitmap_large_WHITE.png"
        }

        Texture {
            id: studio_small_08_4k
            source: "studio_small_08_4k.hdr"
        }

        Texture {
            id: studio_small_08_4k1
            source: "images/studio_small_08_4k.hdr"
        }

        Texture {
            id: moonless_golf_4k
            source: "moonless_golf_4k.hdr"
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
            target: blueCube
            property: "eulerRotation.x"
            Keyframe {
                value: 24
                frame: 0
            }

            Keyframe {
                value: 45
                frame: 1998
            }
        }

        KeyframeGroup {
            target: redCube
            property: "eulerRotation.y"
            Keyframe {
                value: 60
                frame: 2000
            }

            Keyframe {
                value: 45
                frame: 0
            }
        }

        KeyframeGroup {
            target: greenCube
            property: "eulerRotation.z"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 15
                frame: 2000
            }
        }

        KeyframeGroup {
            target: view3D
            property: "anchors.topMargin"
            Keyframe {
                value: 96
                frame: 329
            }
        }

        KeyframeGroup {
            target: view3D
            property: "anchors.leftMargin"
            Keyframe {
                value: -170
                frame: 329
            }
        }

        KeyframeGroup {
            target: view3D
            property: "anchors.bottomMargin"
            Keyframe {
                value: -96
                frame: 329
            }
        }

        KeyframeGroup {
            target: view3D
            property: "anchors.rightMargin"
            Keyframe {
                value: 170
                frame: 329
            }
        }
    }
    HelloWorld {
        id: helloWorld
        x: 431
        y: 538
    }
}

/*##^##
Designer {
    D{i:0;matPrevEnvDoc:"SkyBox";matPrevEnvValueDoc:"preview_landscape";matPrevModelDoc:"#Cube"}
D{i:3;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}D{i:11}
}
##^##*/

