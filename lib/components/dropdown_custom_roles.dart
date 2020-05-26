import 'package:flutter/material.dart';
import 'package:text_it_loud/constants.dart';

class CustomDropDownRoles extends StatefulWidget {
  final List<String> dropdownList;
  CustomDropDownRoles(this.dropdownList);

  @override
  _CustomDropDownRolesState createState() => _CustomDropDownRolesState();
}

class _CustomDropDownRolesState extends State<CustomDropDownRoles> {
  String dropdownValue='Listener';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      style: kTextItLoudHeadingStyle.copyWith(fontSize:16.0),
      value: dropdownValue,
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
          setSessionRole(newValue);
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
