
import 'package:flutter/material.dart';

class HomeData {
  String title;
  int number;
  Color color;
  HomeData(this.title, this.number, this.color);

}

List<HomeData> getHomeData = [
  HomeData(
    "Confirmed Cases",
    1062,
    Colors.red
  ),
  HomeData(
    "Total Death",
    75,
    Colors.blue
  ),
  HomeData(
    "Total Recovered",
    689,
    Colors.yellow
  ),
  HomeData(
    "New Cases",
    52,
    Colors.green
  )
];