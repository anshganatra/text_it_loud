import 'package:flutter/material.dart';
import 'package:text_it_loud/constants.dart';

class CustomDropdownLanguages extends StatefulWidget {
  final List<String> dropdownList;
  CustomDropdownLanguages(this.dropdownList);

  @override
  _CustomDropdownLanguagesState createState() => _CustomDropdownLanguagesState();
}

class _CustomDropdownLanguagesState extends State<CustomDropdownLanguages> {
  String dropdownValue=getDefaultLanguage();

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      style: kTextItLoudHeadingStyle.copyWith(fontSize:16.0),
      value: dropdownValue,
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
          setDefaultLanguage(newValue);
        });
      },
      items: widget.dropdownList
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
