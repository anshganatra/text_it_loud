import 'package:flutter/material.dart';
import '../constants.dart';
import 'dropdown_custom_languages.dart';
import 'dropdown_custom_roles.dart';

class DropdownTile extends StatelessWidget {
  final bool isRoleDropdown;
  final String label;
  final List<String> dropdownList;
  DropdownTile({this.label, this.dropdownList, this.isRoleDropdown});

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
          child: isRoleDropdown?CustomDropDownRoles(dropdownList):CustomDropdownLanguages(dropdownList),
        ),
      ],
    );
  }
}
