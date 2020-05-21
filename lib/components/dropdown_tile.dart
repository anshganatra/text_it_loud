import 'package:flutter/material.dart';
import '../constants.dart';
import 'dropdown_custom.dart';

class DropdownTile extends StatelessWidget {
  final bool isRoleDropdowm;
  final String label;
  final List<String> dropdownList;
  // final String defaultValue;
  DropdownTile({this.label, this.dropdownList, this.isRoleDropdowm});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0, left: 40.0),
          child: Text(
            label,
            style: kTextItLoudHeadingStyle.copyWith(
              fontSize: 16.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0, right: 40.0),
          child: CustomDropDown(dropdownList,isRoleDropdowm),
        ),
      ],
    );
  }
}
