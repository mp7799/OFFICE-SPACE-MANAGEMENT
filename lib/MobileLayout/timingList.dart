import 'package:flutter/material.dart';

class TimingList {
  var style = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w100,
    fontFamily: "Century Goth",
    color: Colors.black,
  );
  List<Text> timeIntervals() {
    List<Text> times = [
      Text(
        '09:00 - 11:00',
        style: style,
      ),
      Text(
        '11:00 - 13:00',
        style: style,
      ),
      Text(
        'Lunch',
        style: style,
      ),
      Text(
        '13:00 - 15:00',
        style: style,
      ),
      Text(
        '15:00 - 17:00',
        style: style,
      ),
    ];
    return times;
  }
}
