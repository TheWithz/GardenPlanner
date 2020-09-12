import 'package:flutter/material.dart';
import 'package:garden_planner/daily_wiidget.dart';

import 'garden_planner_icons_icons.dart';

void main() {
  runApp(MyApp());
}

Icon getMoonPhase(String phase) {
  switch (phase) {
    case "new_moon":
      return Icon(GardenPlannerIcons.new_moon);
    case "moon_full":
      return Icon(GardenPlannerIcons.moon_full);
    case "moon_first_quarter":
      return Icon(GardenPlannerIcons.moon_first_quarter);
    case "moon_last_quarter":
      return Icon(GardenPlannerIcons.moon_last_quarter);
    case "moon_waning_gibbous":
      return Icon(GardenPlannerIcons.moon_waning_gibbous);
    case "moon_waning_crescent":
      return Icon(GardenPlannerIcons.moon_waning_crescent);
    case "moon_waxing_gibbous":
      return Icon(GardenPlannerIcons.moon_waxing_gibbous);
    default:
      return Icon(GardenPlannerIcons.new_moon);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Tab(icon: Icon(GardenPlannerIcons.growveg)),
              SizedBox(width: 80),
              Text("Garden Planner"),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(),
              ListTile(),
              ListTile(),
              ListTile(),
              ListTile(),
              ListTile(),
            ],
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlatButton(
                          child: Icon(GardenPlannerIcons.previous),
                          color: Colors.green,
                          onPressed: () {},
                        ),
                        Padding(
                          child: Text(
                            "September 5th to 11th",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          padding: EdgeInsets.only(
                            left: 10,
                            top: 10,
                            right: 10,
                            bottom: 10,
                          ),
                        ),
                        FlatButton(
                          child: Icon(GardenPlannerIcons.next),
                          color: Colors.green,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              DailyWidget(
                date: "Thursday 10th",
                tempHigh: "90°F",
                tempLow: "72°F",
                rainPercentage: "56%",
                weatherSentence: "Rain in the evening and overnight.",
                phaseIcon: getMoonPhase("moon_waxing_gibbous"),
                daysNotes:
                    "These are the notes for the day. Plants plants plants, I love them. "
                    "Trying to make this long enough to wrap around.",
              ),
              DailyWidget(
                date: "Thursday 10th",
                tempHigh: "90°F",
                tempLow: "72°F",
                rainPercentage: "56%",
                weatherSentence: "Rain in the evening and overnight.",
                phaseIcon: getMoonPhase("moon_waxing_gibbous"),
                daysNotes:
                    "These are the notes for the day. Plants plants plants, I love them. "
                    "Trying to make this long enough to wrap around.",
              ),
              DailyWidget(
                date: "Thursday 10th",
                tempHigh: "90°F",
                tempLow: "72°F",
                rainPercentage: "56%",
                weatherSentence: "Rain in the evening and overnight.",
                phaseIcon: getMoonPhase("moon_waxing_gibbous"),
                daysNotes:
                    "These are the notes for the day. Plants plants plants, I love them. "
                    "Trying to make this long enough to wrap around.",
              ),
              DailyWidget(
                date: "Thursday 10th",
                tempHigh: "90°F",
                tempLow: "72°F",
                rainPercentage: "56%",
                weatherSentence: "Rain in the evening and overnight.",
                phaseIcon: getMoonPhase("moon_waxing_gibbous"),
                daysNotes:
                    "These are the notes for the day. Plants plants plants, I love them. "
                    "Trying to make this long enough to wrap around.",
              ),
              DailyWidget(
                date: "Thursday 10th",
                tempHigh: "90°F",
                tempLow: "72°F",
                rainPercentage: "56%",
                weatherSentence: "Rain in the evening and overnight.",
                phaseIcon: getMoonPhase("moon_waxing_gibbous"),
                daysNotes:
                    "These are the notes for the day. Plants plants plants, I love them. "
                    "Trying to make this long enough to wrap around.",
              ),
              DailyWidget(
                date: "Thursday 10th",
                tempHigh: "90°F",
                tempLow: "72°F",
                rainPercentage: "56%",
                weatherSentence: "Rain in the evening and overnight.",
                phaseIcon: getMoonPhase("moon_waxing_gibbous"),
                daysNotes:
                    "These are the notes for the day. Plants plants plants, I love them. "
                    "Trying to make this long enough to wrap around.",
              ),
              DailyWidget(
                date: "Thursday 10th",
                tempHigh: "90°F",
                tempLow: "72°F",
                rainPercentage: "56%",
                weatherSentence: "Rain in the evening and overnight.",
                phaseIcon: getMoonPhase("moon_waxing_gibbous"),
                daysNotes:
                    "These are the notes for the day. Plants plants plants, I love them. "
                    "Trying to make this long enough to wrap around.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
