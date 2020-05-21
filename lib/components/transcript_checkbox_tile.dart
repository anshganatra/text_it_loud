import 'package:flutter/material.dart';

import '../constants.dart';

class TranscriptSavingCheckboxTile extends StatefulWidget {
  @override
  _TranscriptSavingCheckboxTileState createState() => _TranscriptSavingCheckboxTileState();
}

class _TranscriptSavingCheckboxTileState extends State<TranscriptSavingCheckboxTile> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0, left: 40.0),
          child: Text(
            'SAVE TRANSCRIPT?',
            style: kTextItLoudHeadingStyle.copyWith(
              fontSize: 16.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0, right: 40.0),
          // padding: const EdgeInsets.only(bottom: 8.0, top: 3.0),
          child: Checkbox(
            value: value,
            onChanged: (newValue) {
              setState(() {
                value = newValue;
              });
            },
            activeColor: Colors.black,
          ),
        )
      ],
    );
  }
}
