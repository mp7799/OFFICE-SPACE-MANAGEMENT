import 'package:flutter/material.dart';
import 'package:office_space_management/MobileLayout/login.dart';

class MobileHomePage extends StatefulWidget {
  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

double height, width;

class _MobileHomePageState extends State<MobileHomePage> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Login();
  }
}
