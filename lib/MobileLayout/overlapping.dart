import 'package:flutter/material.dart';
import 'package:office_space_management/constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class OverlappingZone extends StatefulWidget {
  @override
  _OverlappingZoneState createState() => _OverlappingZoneState();
}

class _OverlappingZoneState extends State<OverlappingZone> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SlidingUpPanel(
        renderPanelSheet: false,
        minHeight: MediaQuery.of(context).size.height * 0.40,
        panel: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
          ),
        ),
        body: SafeArea(
          child: Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height * 100,
              decoration: boxDecoration,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/profile1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 200,
                        width: 200,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Text(
                        'Manpreet Singh',style: style,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
