import 'package:flutter/material.dart';

var kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: style,
  fillColor: Colors.black,
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

var whiteTextField = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: style,
  fillColor: Colors.white,
  focusColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(vertical: 23.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

var style = TextStyle(
  fontFamily: "Century Goth",
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

var boxDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xff02385E), Color(0xff00172D)],
  ),
);

//[Color(0xff22324B), Colors.black]
//Color(0xff02386E)
//Color(0xff02386E), Color(0xff00172D)