/* === This file is part of Calamares - <https://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *   Copyright 2018, Adriaan de Groot <groot@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        id: advanceTimer
        interval: 10000
        running: true
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    Slide {
        Image {
            id: background1
            source: "random1.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background1.horizontalCenter
            anchors.top: background1.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background2
            source: "TOS-installer-1.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background2.horizontalCenter
            anchors.top: background2.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background3
            source: "random2.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background3.horizontalCenter
            anchors.top: background3.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background4
            source: "TOS-installer-2.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background4.horizontalCenter
            anchors.top: background4.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background5
            source: "random3.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background5.horizontalCenter
            anchors.top: background5.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background6
            source: "TOS-installer-3.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background6.horizontalCenter
            anchors.top: background6.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background7
            source: "random4.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background7.horizontalCenter
            anchors.top: background7.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background8
            source: "TOS-installer-4.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background8.horizontalCenter
            anchors.top: background8.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background9
            source: "random5.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background9.horizontalCenter
            anchors.top: background9.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background10
            source: "TOS-installer-5.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background10.horizontalCenter
            anchors.top: background10.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background11
            source: "random6.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background11.horizontalCenter
            anchors.top: background11.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background12
            source: "TOS-installer-6.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background12.horizontalCenter
            anchors.top: background12.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background13
            source: "TOS-installer-6.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background13.horizontalCenter
            anchors.top: background13.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background14
            source: "ThankYou.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background14.horizontalCenter
            anchors.top: background14.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background15
            source: "TOS-installer-7.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background15.horizontalCenter
            anchors.top: background15.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background16
            source: "TOS-installer-8.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background16.horizontalCenter
            anchors.top: background16.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background17
            source: "TOS-installer-9.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background17.horizontalCenter
            anchors.top: background17.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }

     Slide {
        Image {
            id: background18
            source: "random6.jpg"
            width: 800; height: 440
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background18.orizontalCenter
            anchors.top: background18.bottom
            text: ""
            wrapMode: Text.WordWrap
            width: 800
            horizontalAlignment: Text.Center
        }
    }


    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }
    
    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }

}