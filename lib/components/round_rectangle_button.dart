import 'package:flutter/material.dart';

class RoundRectangleButton extends StatelessWidget {
  final String title;
  final String onPressedNavigator;
  // final Function onPressed;
  RoundRectangleButton({this.title, this.onPressedNavigator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Container(
        width: 170,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          boxShadow: [
            // BoxShadow(
            //   color: Colors.grey,
            //   blurRadius: 3.0,
            //   spreadRadius: 1.0,
            //   offset: Offset(2.3, 4)
            // ),
          ]
        ),
        child: FlatButton(
            onPressed: () {
              print('$title');
              Navigator.pushNamed(context, '/$onPressedNavigator');
            },
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Volkhov',
              ),
            )),
      ),
    );
  }
}
