import 'dart:io';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:text_it_loud/components/round_rectangle_button.dart';
import '../constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showDialog(
              context: context,
              builder: (context) => new AlertDialog(
                title: new Text(
                  'Exit',
                  style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
                ),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text(
                        'You are about to exit.',
                        style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
                      ),
                      Text(
                        'Are you sure?',
                        style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text(
                      'Yes',
                      style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
                    ),
                    onPressed: () {
                      setSessionUsernameToNull();
                      setSessionName('');
                      setSessionPassword('');
                      exit(0);
                    },
                  ),
                  FlatButton(
                    child: Text(
                      'No',
                      style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ) ??
            false;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'textitloud',
                    child: TyperAnimatedTextKit(
                      isRepeatingAnimation: false,
                      speed: Duration(milliseconds: 100),
                      text: [
                        "Text-It-Loud",
                      ],
                      textStyle: kTextItLoudHeadingStyle,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 75.0 / 780.0,
                  ),
                  RoundRectangleButton(
                    title: 'GROUP',
                    onTap: () {
                      Navigator.pushNamed(context, '/createjoin');
                    },
                  ),
                  RoundRectangleButton(
                    title: 'INDIVIDUAL',
                    onTap: () {
                      Navigator.pushNamed(context, '/createjoin');
                    },
                  ),
                  RoundRectangleButton(
                    title: 'TRANSCRIPTS',
                    onTap: () {
                      Navigator.pushNamed(context, '/transcripts');
                    },
                  ),
                  RoundRectangleButton(
                    title: 'SETTINGS',
                    onTap: () {
                      Navigator.pushNamed(context, '/settings');
                    },
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
