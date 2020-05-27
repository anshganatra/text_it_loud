import 'package:flutter/material.dart';

class RoundRectangleButton extends StatelessWidget {
  final String title;
  final Function onTap;
  RoundRectangleButton({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
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
            onTap();
            print('$title');
          },
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Volkhov',
            ),
          )
          ),
    );
  }
}
