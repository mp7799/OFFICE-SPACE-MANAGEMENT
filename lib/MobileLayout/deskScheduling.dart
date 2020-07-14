import 'package:flutter/material.dart';
import 'package:office_space_management/MobileLayout/profile.dart';
import 'package:office_space_management/MobileLayout/suggestion.dart';
import 'package:office_space_management/MobileLayout/timingList.dart';
import 'package:office_space_management/constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class DeskScheduling extends StatefulWidget {
  @override
  _DeskSchedulingState createState() => _DeskSchedulingState();
}

class _DeskSchedulingState extends State<DeskScheduling> {
  static TimingList timingList = TimingList();

  List<Text> times = timingList.timeIntervals();
  var scaffoldKey = GlobalKey<ScaffoldState>();

  var styleBlack = TextStyle(
    fontFamily: "Century Goth",
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Text(
                      'Features',
                      style: style.copyWith(
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                  decoration: boxDecoration,
                ),
                DrawerItem(
                  styleBlack: styleBlack,
                  itemText: 'Profile',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeftWithFade,
                            child: Profile()));
                  },
                ),
                DrawerItem(
                    styleBlack: styleBlack,
                    itemText: 'Schedule',
                    onTap: () {
                      Navigator.pop(context);
                    }),
                DrawerItem(
                  styleBlack: styleBlack,
                  itemText: 'Overlapping Zone',
                  onTap: () {},
                ),
                DrawerItem(
                  styleBlack: styleBlack,
                  itemText: 'HotSpots/Relaxation Bay',
                  onTap: () {},
                ),
                DrawerItem(
                  styleBlack: styleBlack,
                  itemText: '3D View - Office Plan',
                  onTap: () {},
                ),
                DrawerItem(
                  styleBlack: styleBlack,
                  itemText: 'Shelves',
                  onTap: () {},
                ),
                DrawerItem(
                  styleBlack: styleBlack,
                  itemText: 'Dump',
                  onTap: () {},
                ),
                DrawerItem(
                  styleBlack: styleBlack,
                  itemText: 'Progress Tracking',
                  onTap: () {},
                ),
                DrawerItem(
                  styleBlack: styleBlack,
                  itemText: 'Suggestion/Complaint',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeftWithFade,
                        child: Suggestion(),
                      ),
                    );
                  },
                ),
                DrawerItem(
                  styleBlack: styleBlack,
                  itemText: 'Minutes Of Meeting',
                  onTap: () {},
                ),
                DrawerItem(
                  styleBlack: styleBlack,
                  itemText: 'Events',
                  onTap: () {},
                ),
                DrawerItem(
                  styleBlack: styleBlack,
                  itemText: 'Stocks',
                  onTap: () {},
                ),
              ],
            ),
          ),
          body: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.view_headline,
                            size: 30,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            scaffoldKey.currentState.openDrawer();
                          },
                        ),
                        Text(
                          'Today\'s Schedule',
                          style: styleBlack,
                        ),
                        Icon(
                          Icons.account_circle,
                          size: 40,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    child: Text(
                      'Timings',
                      style: style.copyWith(color: Colors.black87),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: times.map((item) {
                        var itemIndex = times.indexOf(item);
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 100.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: selectedIndex == itemIndex
                                        ? Colors.orange
                                        : Colors.black87,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = itemIndex;
                                        print(itemIndex);
                                      });
                                    },
                                    child: FittedBox(
                                        fit: BoxFit.fitWidth, child: item),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.74,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(150)),
                        //color: Color(0xff4E436D),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color(0xff02385E), Color(0xff00172D)],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: (MediaQuery.of(context).size.width * 0.08),
                            top: (MediaQuery.of(context).size.height * 0.10)),
                        child: ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: ScheduleInfo(),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            FittedBox(
                                fit: BoxFit.fitWidth,
                                child: ScheduleInfoExtras()),
                            SizedBox(
                              height: 50.0,
                            ),
                            FittedBox(
                                fit: BoxFit.fitWidth,
                                child: UpcomingSchedule()),
                          ],
                        ),
                      ),
                    ),
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

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key key,
    @required this.itemText,
    @required this.styleBlack,
    @required this.onTap,
  }) : super(key: key);

  final String itemText;
  final TextStyle styleBlack;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        title: Text(
          itemText,
          style: styleBlack,
        ),
      ),
      onTap: onTap,
    );
  }
}

class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Time',
                style: style.copyWith(
                  color: Colors.orange[400],
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                height: 200,
                width: 1,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Upcoming Desk Schedule',
                style: style,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Allotted Desk - 7CA2',
                style: style.copyWith(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ScheduleInfoExtras extends StatelessWidget {
  const ScheduleInfoExtras({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Time',
                style: style.copyWith(
                  color: Colors.orange[400],
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                height: 200,
                width: 1,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Design Studies',
                style: style,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Phone Chat',
                style: style.copyWith(fontSize: 15),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/profile1.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/profile2.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/profile3.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ScheduleInfo extends StatelessWidget {
  const ScheduleInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Time',
                style: style.copyWith(
                  color: Colors.orange[400],
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                height: 200,
                width: 1,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  color: Colors.orange[300],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Desk - 4XS3',
                              style: style.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4D426C),
                              ),
                            ),
                            Text(
                              'Manpreet Singh',
                              style: style.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4D426C),
                              ),
                            ),
                            Text(
                              'Design Consultation',
                              style: style.copyWith(
                                color: Color(0xff4D426C),
                                fontWeight: FontWeight.w100,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Alert(
                                  context: context,
                                  style: AlertStyle(
                                    titleStyle: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: 'Century Goth',
                                    ),
                                    descStyle: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Century Goth',
                                    ),
                                    alertBorder: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                      side: BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  type: AlertType.error,
                                  title: "Desk Seating Modification",
                                  desc:
                                      "You sure you want to modify your desk.",
                                  buttons: [
                                    DialogButton(
                                      child: Text(
                                        "Modify",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () => Navigator.pop(context),
                                      width: 120,
                                    )
                                  ],
                                ).show();
                              },
                              child: Text(
                                'Modify',
                                style: style.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4D426C),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'DevOps Regular Meet-Up',
                style: style,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'DevOps Coffee',
                style: style.copyWith(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
