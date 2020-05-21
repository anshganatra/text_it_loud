import 'package:flutter/material.dart';
import 'package:text_it_loud/constants.dart';

class TranscriptListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Container(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Hero(
                    tag: 'textitloud',
                    child: Text(
                      'Text-It-Loud',
                      style: kTextItLoudHeadingStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:15.0),
                  child: Text(
                    'TRANSCRIPTS',
                    style: kTextItLoudHeadingStyle.copyWith(fontSize:16.0, fontWeight: FontWeight.w300),
                  ),
                ),
                Divider(
                  height: 12.0,
                  thickness: 1.2,
                  color: Colors.black,
                  indent: 80.0,
                  endIndent: 80.0,
                ),
                //TODO : ADD LIST OF TRANSCRIPTS AS SCROLLVIEW
              ],
            ),
          ),
        ),
      ),
    );
  }
}
