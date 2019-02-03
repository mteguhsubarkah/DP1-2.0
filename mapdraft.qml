import QtQuick 2.7
import QtQuick.Window 2.1
import QtQuick.Controls 2.1
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.1
import QtLocation 5.7
import QtPositioning 5.7



Window {
    id: window
    visible: true
    width: 1350
    height: 750
    color: "#000000"

    title: qsTr("Dynamic Positioning")
    Plugin {
        id: myPlugin
        name: "osm" // "mapboxgl", "esri", ...
        //specify plugin parameters if necessary
        //PluginParameter {...}
        //PluginParameter {...}
        //...
    }

    property variant locationOslo: QtPositioning.coordinate( -6.98, 107.61)//ITB

    PlaceSearchModel {
        id: searchModel

        plugin: myPlugin

        searchTerm: "Pizza"
        searchArea: QtPositioning.circle(locationOslo)

        Component.onCompleted: update()
    }

    Map {
        id: map
        anchors.fill: parent
        plugin: myPlugin;
        center: locationOslo
        zoomLevel: 13

        MapItemView {
            model: searchModel
            delegate: MapQuickItem {
                coordinate: place.location.coordinate

                anchorPoint.x: image.width * 0.5
                anchorPoint.y: image.height

                sourceItem: Column {
                    Image { id: image; source: "propeller.png" }
                    Text { text: title; font.bold: true }
                }
            }
        }
    }

    PositionSource {
        id: positionSource
        property variant lastSearchPosition: locationOslo
        active: true
        updateInterval: 120000 // 2 mins
        onPositionChanged:  {
            var currentPosition = positionSource.position.coordinate
            map.center = currentPosition
            var distance = currentPosition.distanceTo(lastSearchPosition)
            if (distance > 500) {
                // 500m from last performed pizza search
                lastSearchPosition = currentPosition
                searchModel.searchArea = QtPositioning.circle(currentPosition)
                searchModel.update()
            }
        }
    }
}




