import 'package:flutter/material.dart';

import '../constants.dart';

class ConfigScreenTextField extends StatelessWidget {
  final String label;
  final bool isPasswordField;
  final TextEditingController defaultTextFieldController;
  ConfigScreenTextField({this.label, this.isPasswordField,this.defaultTextFieldController});
  // final TextEditingController myController = TextEditingController()..text = defaultTextFieldValue;


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
              controller: defaultTextFieldController,
              cursorColor: Colors.black,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'required',
                // enabledBorder: UnderlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.black,
                //   ),
                // ),
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
