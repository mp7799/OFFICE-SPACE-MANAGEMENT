import 'package:flutter/material.dart';
import 'package:office_space_management/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          decoration: boxDecoration,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'EID4563428293',
                      style: style.copyWith(
                        fontSize: 10.0,
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(
                        children: [
                          Text(
                            'Manpreet Singh',
                            style: style,
                          ),
                          SizedBox(
                            width: 110.0,
                          ),
                          Text(
                            'Senior Developer',
                            style: style,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ), //Eid & Name of Employee
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: CircularPercentIndicator(
                          radius: MediaQuery.of(context).size.width * 0.45,
                          animation: true,
                          animationDuration: 2000,
                          lineWidth: 15.0,
                          percent: 0.90,
                          center: Text(
                            "90 %",
                            style: style,
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          backgroundColor: Colors.black26,
                          progressColor: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Qualities(
                                  percent: '53 %',
                                  quality: 'Work Experience',
                                ),
                                Qualities(
                                  percent: '18 %',
                                  quality: 'Projects',
                                ),
                                Qualities(
                                  percent: '09 %',
                                  quality: 'LeaderShip',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ), //Progress Indicator & Qualities
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Text(
                  'Assigned Desk - 4XA3 - 3rd Floor',
                  style: style,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  height: 10.0,
                  thickness: 1.0,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Detailed Insights',
                  style: style,
                ),
              ),
              Insights(
                quality: 'Work Experience',
                completedPercent: '53',
                remainingPercent: '47',
              ),
              Insights(
                quality: 'Projects Completed',
                completedPercent: '80',
                remainingPercent: '20',
              ),
              Insights(
                quality: 'Skills Acquired',
                completedPercent: '08',
                remainingPercent: '12',
              ),
              Insights(
                quality: 'Project Overseas',
                completedPercent: '04',
                remainingPercent: '16',
              ),
              Insights(
                quality: 'Project Lead',
                completedPercent: '12',
                remainingPercent: '08',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Insights extends StatelessWidget {
  const Insights({
    Key key,
    @required this.quality,
    @required this.completedPercent,
    @required this.remainingPercent,
  }) : super(key: key);

  final String quality, completedPercent, remainingPercent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Container(
          //width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    quality,
                    style: style.copyWith(
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width * 0.925,
                animation: true,
                animationDuration: 2000,
                lineHeight: 10.0,
                percent: (int.parse(completedPercent) / 100),
                linearStrokeCap: LinearStrokeCap.round,
                progressColor: Colors.white,
                backgroundColor: Colors.black26,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    completedPercent + " %",
                    style: style.copyWith(
                      fontWeight: FontWeight.w100,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Qualities extends StatelessWidget {
  const Qualities({
    @required this.percent,
    @required this.quality,
    Key key,
  }) : super(key: key);

  final String percent, quality;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              percent,
              style: style,
            ),
            Text(
              quality,
              style:
                  style.copyWith(fontSize: 10.0, fontWeight: FontWeight.w100),
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ],
    );
  }
}
