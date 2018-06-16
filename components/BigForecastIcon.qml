import QtQuick 2.0

Rectangle {
    id: current
    color: "#03A9F4"

    property string topText: "20*"
    property string minText: "20*"
    property string bottomText: "Mostly cloudy"
    property string weatherIcon: "01d"
    property string dateText: "Today"
    property real smallSide: (current.width < current.height ? current.width : current.height)

    Text {
        y: current.height/8
        text: current.dateText
        opacity: 0.3
        x: current.width/3
        font.pointSize: 21
        wrapMode: Text.WordWrap
        color: "#EEEEEE"
    }

    WeatherIcon {
        x: current.width/9
        y: current.height/4
        width: current.width/4
        weatherIcon: current.weatherIcon
        useServerIcon: false
        height: current.height/2

    }

    Text {
        x: current.width- current.width/3
        y: current.height/3
        text: current.topText
        opacity: 0.8
        font.pointSize: 50
        color: "#EEEEEE"
    }

    Text {
        x: current.width- current.width/3.5
        y: current.height-60
        text: current.minText
        opacity: 0.5
        font.pointSize: 30
        color: "#EEEEEE"
    }


    Text {
        x: current.width/8
        y: current.height-40
        width: current.width/2
        text: current.bottomText
        font.capitalization: Font.Capitalize
        font.pointSize: 18
        wrapMode: Text.WordWrap
        opacity: 0.5
        color: "#EEEEEE"
    }

}
