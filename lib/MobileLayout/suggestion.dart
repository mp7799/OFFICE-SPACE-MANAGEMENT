import 'package:flutter/material.dart';

import '../constants.dart';

class Suggestion extends StatefulWidget {
  @override
  _SuggestionState createState() => _SuggestionState();
}

class _SuggestionState extends State<Suggestion> {
  TextEditingController _controller = TextEditingController();
  String _buttonText = 'Submit';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: boxDecoration,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'EID4232128502',
                        style: style,
                      ),
                      Text(
                        'Manpreet Singh',
                        style: style,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.17,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 80.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Type your Suggestion/Complaint here',
                      style: style,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 200,
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: _controller,
                          decoration: whiteTextField.copyWith(
                              hintText: 'Enter suggestion',
                              hintStyle: style.copyWith(
                                fontWeight: FontWeight.w100,
                                fontSize: 20.0,
                              )),
                          style: style,
                          expands: true,
                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.newline,
                          minLines: null,
                          maxLines: null,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 0.15),
                      elevation: 10.0,
                      child: Text(
                        _buttonText,
                        style: style.copyWith(
                          fontSize: 25.0,
                        ),
                      ),
                      onPressed: () async {
                        setState(() {
                          _controller.clear();
                          _buttonText = 'Please Wait';
                        });
                        await Future.delayed(Duration(seconds: 2))
                            .then((value) {
                          setState(() {
                            _buttonText = 'Submitted';
                          });
                        });
                        Future.delayed(Duration(seconds: 2)).then((value) {
                          setState(() {
                            _buttonText = 'Submit';
                          });
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
