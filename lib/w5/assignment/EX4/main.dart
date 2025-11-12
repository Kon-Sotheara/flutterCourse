import 'package:flutter/material.dart';
import 'package:project/w5/assignment/EX4/weatherCard.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Weathercard(
                city: "PhnomPenh", 
                weather: Weather.cloudy, 
                minTem: "10.0", 
                maxTem: "30.0", 
                crruentTem: "12.0"
              ),
              Weathercard(
                city: "Paris", 
                weather: Weather.sunnyCloudy, 
                minTem: "10.0", 
                maxTem: "40.0", 
                crruentTem: "22.2"
              ),
              Weathercard(
                city: "Rome", 
                weather: Weather.sunny, 
                minTem: "10.0", 
                maxTem: "40.0", 
                crruentTem: "45.2"
              ),
              Weathercard(
                city: "Touluse", 
                weather: Weather.veryCloudy, 
                minTem: "10.0", 
                maxTem: "40.0", 
                crruentTem: "45.2"
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
