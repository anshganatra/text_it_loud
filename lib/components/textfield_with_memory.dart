import 'package:flutter/material.dart';
import '../constants.dart';

class ConfigScreenTextFieldMemory extends StatelessWidget {
  final String label;
  final bool isPasswordField;
  final Function getTextFieldValue;
  final Function setTextFieldValue;
  ConfigScreenTextFieldMemory({this.label, this.isPasswordField,this.getTextFieldValue, this.setTextFieldValue});


  //setTextFieldValue takes input and sets it equal to required variable in constants
  //getTextFieldValue returns current value of the required field from constants


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0, left: 40.0),
          child: Text(
            label,
            style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
          ),
        ),
        SizedBox(
          width: 150.0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15.0, right: 40.0),
            child: TextField(
              controller: TextEditingController(text: (getTextFieldValue()==null)?'':getTextFieldValue()),
              onChanged: (textFieldValue){
                setTextFieldValue(textFieldValue);
              },
              cursorColor: Colors.black,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'required',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
              obscureText: isPasswordField,
            ),
          ),
        ),
      ],
    );
  }
}
