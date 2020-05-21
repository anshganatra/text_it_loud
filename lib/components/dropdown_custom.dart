import 'package:flutter/material.dart';
import 'package:text_it_loud/constants.dart';

class CustomDropDown extends StatefulWidget {
  final bool isRoleDropdowm;
  final List<String> dropdownList;
  CustomDropDown(this.dropdownList, this.isRoleDropdowm);

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String dropdownValue = (widget.isRoleDropdowm)?'Listener':'English';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      style: kTextItLoudHeadingStyle.copyWith(fontSize:16.0),
      value: dropdownValue,
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
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
