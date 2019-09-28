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
            source: "TOS-installer-1.jpg"
            width: presentation.width; height: presentation.height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

    Slide {
        Image {
            id: background2
            source: "TOS-installer-2.jpg"
            width: presentation.width; height: presentation.height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }


    Slide {
        Image {
            id: background3
            source: "TOS-installer-3.jpg"
            width: presentation.width; height: presentation.height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }


    Slide {
        Image {
            id: background4
            source: "TOS-installer-4.jpg"
            width: presentation.width; height: presentation.height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }


    Slide {
        Image {
            id: background5
            source: "TOS-installer-5.jpg"
            width: presentation.width; height: presentation.height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

    Slide {
        Image {
            id: background6
            source: "random6.jpg"
            width: presentation.width; height: presentation.height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }


    Slide {
        Image {
            id: background7
            source: "TOS-installer-6.jpg"
            width: presentation.width; height: presentation.height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }


    Slide {
        Image {
            id: background8
            source: "TOS-installer-7.jpg"
            width: presentation.width; height: presentation.height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

    Slide {
        Image {
            id: background9
            source: "TOS-installer-8.jpg"
            width: presentation.width; height: presentation.height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

    Slide {
        Image {
            id: background10
            source: "TOS-installer-9.jpg"
            width: presentation.width; height: presentation.height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
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