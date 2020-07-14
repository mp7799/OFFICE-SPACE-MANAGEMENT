import 'package:flutter/material.dart';
import 'package:office_space_management/MobileLayout/prepareSchedule.dart';
import '../constants.dart';

class Login extends StatelessWidget {
  final TextStyle style = TextStyle(
      fontFamily: 'Century Goth', color: Colors.white, fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.people,
          color: Colors.grey,
        ),
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        hintText: "Username",
        hintStyle: TextStyle(color: Colors.white70),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.grey,
        ),
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.white70),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusColor: Colors.white,
      ),
    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ScheduleMakeUp()));
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style:
              style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    final forgotPassword = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        // minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text(
          "Forgot Password",
          textAlign: TextAlign.center,
          style: style.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );

    // This is the area where the body starts of the application.

    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: boxDecoration,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 160.0),
                  Text(
                    "Welcome Back",
                    style: style.copyWith(
                      fontSize: 40.0,
                    ),
                  ),
                  Text(
                    "Login And Move In",
                    style: style.copyWith(
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 250.0),
                  emailField,
                  SizedBox(height: 25.0),
                  passwordField,
                  SizedBox(
                    height: 35.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      loginButton,
                      SizedBox(
                        width: 10.0,
                      ),
                      forgotPassword,
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
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
