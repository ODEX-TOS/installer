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

    function nextSlide() {
        console.log("Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 30000
        running: true
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {

        Image {
            id: background_2
            source: "language.png"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }
    Slide {

        Image {
            id: background_3
            source: "random1.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

    Slide {

        Image {
            id: background_4
            source: "random2.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

    Slide {

        Image {
            id: background_5
            source: "random3.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

    Slide {

        Image {
            id: background_6
            source: "random4.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

    Slide {

        Image {
            id: background_7
            source: "random5.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

    Slide {

        Image {
            id: background_8
            source: "random6.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

    Slide {

        Image {
            id: background_9
            source: "ThankYou.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

        Slide {

        Image {
            id: background_10
            source: "TOS-installer-1.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

            Slide {

        Image {
            id: background_11
            source: "TOS-installer-2.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }


            Slide {

        Image {
            id: background_11
            source: "ThankYou.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }


            Slide {

        Image {
            id: background_13
            source: "TOS-installer-3.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

            Slide {

        Image {
            id: background_14
            source: "TOS-installer-4.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

            Slide {

        Image {
            id: background_15
            source: "TOS-installer-5.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

            Slide {

        Image {
            id: background_16
            source: "TOS-installer-6.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

            Slide {

        Image {
            id: background_17
            source: "TOS-installer-7.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

            Slide {

        Image {
            id: background_18
            source: "TOS-installer-8.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }

            Slide {

        Image {
            id: background_19
            source: "TOS-installer-9.jpg"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }


    

    Component.onCompleted: {
        advanceTimer.running = true;
        console.log("Component complete");
    }
}
