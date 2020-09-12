import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'garden_planner_icons_icons.dart';

class DailyWidget extends Card {
  String date;
  String tempHigh;
  String tempLow;
  String rainPercentage;
  String weatherSentence;
  Icon phaseIcon;
  String daysNotes;

  DailyWidget({
    String date,
    String tempHigh,
    String tempLow,
    String rainPercentage,
    String weatherSentence,
    Icon phaseIcon,
    String daysNotes,
  }) {
    this.date = date;
    this.tempHigh = tempHigh;
    this.tempLow = tempLow;
    this.rainPercentage = rainPercentage;
    this.weatherSentence = weatherSentence;
    this.phaseIcon = phaseIcon;
    this.daysNotes = daysNotes;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                date,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Tab(icon: Icon(GardenPlannerIcons.temperature_up_arrow)),
                  Text(tempHigh),
                ],
              ),
              Row(
                children: [
                  Tab(icon: Icon(GardenPlannerIcons.temperature_down_arrow)),
                  Text(tempLow),
                ],
              ),
              Tab(icon: phaseIcon),
              Row(
                children: [
                  Tab(icon: Icon(GardenPlannerIcons.rain)),
                  Text(rainPercentage),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(GardenPlannerIcons.planting),
                color: Colors.green,
                onPressed: () {},
                splashRadius: 25,
              ),
              IconButton(
                icon: Icon(GardenPlannerIcons.watering),
                color: Colors.blue,
                onPressed: () {},
                splashRadius: 25,
              ),
              IconButton(
                icon: Icon(GardenPlannerIcons.care),
                color: Colors.purple,
                onPressed: () {},
                splashRadius: 25,
              ),
              IconButton(
                icon: Icon(GardenPlannerIcons.harvesting),
                color: Colors.yellow,
                onPressed: () {},
                splashRadius: 25,
              ),
              IconButton(
                icon: Icon(GardenPlannerIcons.pests),
                color: Colors.orange,
                onPressed: () {},
                splashRadius: 25,
              ),
            ],
          ),
          Text(weatherSentence),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  child: Row(
                    children: [
                      Icon(Icons.speaker_notes),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Text(daysNotes),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(
                    left: 5,
                    top: 10,
                    right: 20,
                    bottom: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
