import 'package:flutter/material.dart';
import 'package:text_it_loud/components/message_bubble.dart';
import 'package:text_it_loud/constants.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            '<session name>',
            style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
          ),
          backgroundColor: Colors.grey[200],
          leading: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
          actions: <Widget>[
              IconButton(
                icon: Icon(Icons.info_outline),
                color: Colors.black,
                onPressed: () {
                  print('tap on info');
                },
              ),
            // ),
          ],
        ),
        backgroundColor: Colors.grey[200],
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
          return MessageBubble(isMe: true,sender: '<sender username>',text: 'lorem ipsum dolor sit amet',);
         },
        ),
      ),
    );
  }
}
