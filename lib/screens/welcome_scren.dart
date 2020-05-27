import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:text_it_loud/components/round_rectangle_button.dart';
import '../constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}
