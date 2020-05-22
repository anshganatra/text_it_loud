import 'package:flutter/material.dart';
import 'package:text_it_loud/components/message_bubble.dart';
import 'package:text_it_loud/constants.dart';

class ChatScreen extends StatelessWidget {
  final List randomMessages = [
    {
      'isMe': true,
      'sender': 'anshganatra',
      'text': 'amet',
    },
    {
      'isMe': false,
      'sender': 'djangomango',
      'text': 'lorem ipsum dolor sit amet lorem ipsum',
    },
    {
      'isMe': true,
      'sender': 'anshganatra',
      'text': 'lorem ipsum dolor sit amet',
    },
    {
      'isMe': false,
      'sender': 'djangomango',
      'text': 'lorem ipsum dolor sit amet lorem ipsum',
    },
    {
      'isMe': true,
      'sender': 'anshganatra',
      'text': 'lorem ipsum dolor sit amet',
    },
    {
      'isMe': false,
      'sender': 'djangomango',
      'text': 'lorem ipsum dolor sit amet lorem ipsum',
    },
    {
      'isMe': true,
      'sender': 'anshganatra',
      'text': 'lorem ipsum dolor sit amet',
    },
    {
      'isMe': false,
      'sender': 'djangomango',
      'text': 'lorem ipsum dolor sit amet lorem ipsum',
    },
    {
      'isMe': true,
      'sender': 'anshganatra',
      'text': 'lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet',
    },
    {
      'isMe': false,
      'sender': 'djangomango',
      'text': 'lorem ipsum dolor sit amet lorem ipsum',
    },
  ];

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
          itemCount: randomMessages.length,
          itemBuilder: (BuildContext context, int index) {
            return MessageBubble(
              isMe: randomMessages[index]['isMe'],
              sender: randomMessages[index]['sender'],
              text: randomMessages[index]['text'],
            );
          },
        ),
      ),
    );
  }
}
