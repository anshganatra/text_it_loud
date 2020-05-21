import 'package:flutter/material.dart';
import 'package:text_it_loud/components/round_rectangle_button.dart';

import '../constants.dart';

class CreateJoinScreen extends StatelessWidget {
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
                  child: Text(
                    'Text-It-Loud',
                    style: kTextItLoudHeadingStyle,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/780*75.0,
                ),
                RoundRectangleButton(
                  title: 'CREATE',
                  onPressedNavigator: 'createscreen',
                ),
                RoundRectangleButton(
                  title: 'JOIN',
                  onPressedNavigator: 'joinscreen',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
