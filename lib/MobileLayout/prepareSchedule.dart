import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:office_space_management/MobileLayout/deskScheduling.dart';
import 'package:office_space_management/MobileLayout/profile.dart';
import 'package:page_transition/page_transition.dart';
import '../constants.dart';
import 'TimeStream.dart';

class ScheduleMakeUp extends StatefulWidget {
  @override
  _ScheduleMakeUpState createState() => _ScheduleMakeUpState();
}

class _ScheduleMakeUpState extends State<ScheduleMakeUp> {
  String currDateTime = DateTime.now().toString();
  static DateTime time = DateTime(DateTime.now().hour);
  int hour = int.parse(time.toString().substring(0, 4));

  TimeStream timeStream = TimeStream();

  final spinkit = SpinKitDualRing(
    color: Colors.white,
    size: 350.0,
    duration: Duration(seconds: 3),
    lineWidth: 12.0,
  );

  String scheduleProcess = "First Make Schedule";

  IconData icon = Icons.timelapse;

  Widget topLeft = Icon(
    Icons.airline_seat_recline_normal,
    color: Colors.white,
  );

  String scheduleButton = "Make Schedule";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: boxDecoration,
            child: Column(children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        topLeft,
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.20,
                        ),
                        StreamBuilder<String>(
                            stream: timeStream.dateTimeStream(),
                            builder: (context, snapshot) {
                            return Text(
                              snapshot.data.substring(0,19),
                              style: style,
                            );
                            }),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            hour < 12
                                ? 'Good Morning - Amara here'
                                : hour < 15
                                    ? 'Good Afternoon - Amara Here'
                                    : 'Good Evening - Amara here',
                            style: style.copyWith(fontSize: 20.0),
                          ),
                          Text(
                            'Let me make your schedule!',
                            style: style.copyWith(fontSize: 25.0),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 6,
                child: Center(
                  child: Stack(
                    children: [
                      spinkit,
                      Center(
                        child: FlatButton(
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                scheduleButton,
                                style: style.copyWith(fontSize: 28.0),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                scheduleButton = 'Please Wait';
                                scheduleProcess = 'Making Schedule..';
                                icon = Icons.all_inclusive;
                                topLeft = Icon(
                                  Icons.swap_horizontal_circle,
                                  color: Colors.white,
                                );
                              });
                              Future.delayed(Duration(seconds: 2))
                                  .then((value) {
                                setState(() {
                                  scheduleProcess =
                                      'Checking involvement in other projects';
                                  icon = Icons.autorenew;
                                });
                                Future.delayed(Duration(seconds: 2))
                                    .then((value) {
                                  setState(() {
                                    scheduleProcess =
                                        'Hold on a second ....... ';
                                    icon = Icons.business_center;
                                  });
                                  Future.delayed(Duration(seconds: 2))
                                      .then((value) {
                                    setState(() {
                                      scheduleProcess = 'Schedule is Ready';
                                      icon = Icons.arrow_forward;
                                      topLeft = Icon(
                                        Icons.subdirectory_arrow_right,
                                        color: Colors.white,
                                      );
                                    });
                                    Future.delayed(Duration(milliseconds: 600))
                                        .then((value) => {
                                              Navigator.push(
                                                  context,
                                                  PageTransition(
                                                      type: PageTransitionType
                                                          .rightToLeftWithFade,
                                                      child: DeskScheduling()))
                                            });
                                  });
                                });
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          scheduleProcess,
                          style: style,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          icon: Icon(
                            icon,
                            size: 40.0,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            if (icon == Icons.arrow_forward) {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType
                                          .rightToLeftWithFade,
                                      child: Profile()));
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
