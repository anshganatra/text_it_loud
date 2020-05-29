import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:text_it_loud/components/dropdown_tile.dart';
import 'package:text_it_loud/components/round_rectangle_button.dart';
import 'package:text_it_loud/components/textfield_with_memory.dart';
import 'package:text_it_loud/components/transcript_checkbox_tile.dart';
import '../constants.dart';
import 'dart:math';
import 'package:toast/toast.dart';

Firestore _firestore = Firestore.instance;

class SessionDetails extends StatelessWidget {
  String sessionIdGenerator() {
    var rand = new Random();
    var codeUnits = new List.generate(6, (index) {
      return (rand.nextInt(2) == 1)
          ? (rand.nextInt(26) + 97)
          : (rand.nextInt(26) + 65);
    });
    setSessionId(String.fromCharCodes(codeUnits));
    return sessionId;
  }

  final String dropDownValue = 'Listener';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Builder(
          builder: (context) => Container(
            child: Center(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 60.0, left: 92.0, right: 88.0),
                    child: Hero(
                      tag: 'textitloud',
                      child: Text(
                        'Text-It-Loud',
                        style: kTextItLoudHeadingStyle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'SESSION DETAILS',
                      textAlign: TextAlign.center,
                      style: kTextItLoudHeadingStyle.copyWith(
                          fontSize: 16.0, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Divider(
                    height: 12.0,
                    thickness: 1.2,
                    color: Colors.black,
                    indent: 80.0,
                    endIndent: 80.0,
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onLongPress: () {
                        Clipboard.setData(ClipboardData(text: sessionId));
                        Toast.show(
                          "Copied Session ID",
                          context,
                          duration: Toast.LENGTH_SHORT,
                          gravity: Toast.BOTTOM,
                          backgroundRadius: 30.0,
                        );
                      },
                      child: Text(
                        'SESSION ID:                     $sessionId',
                        textAlign: TextAlign.center,
                        style: kTextItLoudHeadingStyle.copyWith(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  TranscriptSavingCheckboxTile(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'MEMBERS',
                      textAlign: TextAlign.center,
                      style: kTextItLoudHeadingStyle.copyWith(
                          fontSize: 16.0, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Divider(
                    height: 12.0,
                    thickness: 1.2,
                    color: Colors.black,
                    indent: 80.0,
                    endIndent: 80.0,
                  ),
                  StreamBuilder(
                    stream: _firestore
                        .collection('sessions')
                        .document('$sessionId')
                        .collection('listOfUsers')
                        .snapshots(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.grey,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.black),
                          ),
                        );
                      }
                      final users = snapshot.data.documents;
                      List<Widget> userList = [];
                      for (var user in users) {
                        final username = user.data['username'];
                        final userRole = user.data['role'];
                        userList.add(Text(
                          '$username - $userRole',
                          textAlign: TextAlign.center,
                          style: kTextItLoudHeadingStyle.copyWith(fontSize: 16),
                        ));
                      }
                      return SizedBox(
                        height: 250.0,
                        width: 280.0,
                        child: ListView(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 20.0),
                          children: userList,
                        ),
                      );
                    },
                  ),
                  // SelectableText()
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: RoundRectangleButton(
                      title: 'CLOSE',
                      onTap: () {
                        Navigator.pop(context);
                      },
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
