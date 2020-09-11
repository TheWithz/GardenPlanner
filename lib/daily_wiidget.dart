import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'garden_planner_icons_icons.dart';

class DailyWidget extends StatelessWidget {
  String date;
  String tempHigh;
  String tempLow;
  String rainPercentage;
  String weatherSentence;
  Icon phaseIcon;

  DailyWidget({
    String date,
    String tempHigh,
    String tempLow,
    String rainPercentage,
    String weatherSentence,
    Icon phaseIcon,
  }) {
    this.date = date;
    this.tempHigh = tempHigh;
    this.tempLow = tempLow;
    this.rainPercentage = rainPercentage;
    this.weatherSentence = weatherSentence;
    this.phaseIcon = phaseIcon;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Date"),
            Tab(icon: Icon(GardenPlannerIcons.temperature_up_arrow)),
            Text(""),
            Tab(icon: Icon(GardenPlannerIcons.temperature_down_arrow)),
            Text(""),
            Tab(icon: phaseIcon),
            Tab(icon: Icon(GardenPlannerIcons.rain)),
            Text(""),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(GardenPlannerIcons.planting),
              color: Colors.green,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(GardenPlannerIcons.watering),
              color: Colors.blue,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(GardenPlannerIcons.care),
              color: Colors.purple,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(GardenPlannerIcons.harvesting),
              color: Colors.yellow,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(GardenPlannerIcons.pests),
              color: Colors.orange,
              onPressed: () {},
            ),
          ],
        ),
        Text("Partly cloudy throughout the day"),
      ],
    );
  }
}
