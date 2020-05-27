import 'package:flutter/material.dart';
import 'package:text_it_loud/components/config_screen_textfield.dart';
import 'package:text_it_loud/components/dropdown_tile.dart';
import 'package:text_it_loud/components/round_rectangle_button.dart';
import 'package:text_it_loud/components/textfield_with_memory.dart';
import 'package:text_it_loud/components/transcript_checkbox_tile.dart';
import '../constants.dart';

class JoinScreen extends StatelessWidget {
  // final String sessionid = 'pXqR5';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Container(
          child: Center(
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Hero(
                    tag: 'textitloud',
                    child: Text(
                      'Text-It-Loud',
                      textAlign: TextAlign.center,
                      style: kTextItLoudHeadingStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'SESSION CONFIG',
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
                ConfigScreenTextField(
                    label: 'SESSION ID:', isPasswordField: false),
                ConfigScreenTextFieldMemory(
                  label: 'USERNAME:',
                  isPasswordField: false,
                  setTextFieldValue: setDefaultUsername,
                  getTextFieldValue: getDefaultUsername,
                ),
                ConfigScreenTextField(
                    label: 'PASSWORD:', isPasswordField: true),
                DropdownTile(
                  label: 'SELECT ROLE:  ',
                  dropdownList: ['Listener', 'Speaker'],
                  isRoleDropdown: true,
                ),
                TranscriptSavingCheckboxTile(),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: RoundRectangleButton(
                    title: 'START SESSION',
                    onTap: () {
                      Navigator.pushNamed(context, '/chat');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
