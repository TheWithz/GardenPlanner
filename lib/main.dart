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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: Colors.black54,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Tab(icon: Icon(GardenPlannerIcons.growveg)),
              SizedBox(width: 80),
              Text("Garden Planner"),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DailyWidget(
                date: "Thursday",
                tempHigh: "90°F",
                tempLow: "90°F",
                rainPercentage: "56%",
                weatherSentence: "Rain in the evening and overnight.",
                phaseIcon: getMoonPhase("moon_full"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Increment',
          onPressed: () {},
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
