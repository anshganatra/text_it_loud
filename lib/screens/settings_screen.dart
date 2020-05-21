import 'package:flutter/material.dart';
import 'package:text_it_loud/components/config_screen_textfield.dart';
import 'package:text_it_loud/components/dropdown_tile.dart';
import 'package:text_it_loud/components/round_rectangle_button.dart';
import 'package:text_it_loud/components/textfield_with_memory.dart';
import '../constants.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'SETTINGS',
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
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              ConfigScreenTextFieldMemory(
                label: 'USERNAME: ',
                isPasswordField: false,
                setTextFieldValue: setDefaultUsername,
                getTextFieldValue: getDefaultUsername,
              ),
              DropdownTile(
                label: 'LANGUAGE:',
                dropdownList: supportedLanguages,
                isRoleDropdowm: true,
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoundRectangleButton(
                  title: 'SAVE',
                  onPressedNavigator: '',
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
