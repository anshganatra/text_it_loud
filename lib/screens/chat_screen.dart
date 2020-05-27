import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:text_it_loud/components/message_bubble.dart';
import 'package:text_it_loud/constants.dart';

Firestore _firestore = Firestore.instance;

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final messageTextController = TextEditingController();
  String messageText;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            '${getSessionName()} (${getSessionId()})',
            style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
          ),
          backgroundColor: Colors.grey[200],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              showExitDialog(context);
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: MessagesStream()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: messageTextController,
                    onChanged: (value) {
                      messageText = value;
                    },
                    style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    if (messageText.length > 0) {
                      messageTextController.clear();
                      _firestore
                          .collection('sessions')
                          .document('$sessionId')
                          .collection('listOfMessages')
                          .add({
                        'text': messageText,
                        'sender': sessionUsername,
                      });
                    }
                  },
                  child: Text(
                    'Send',
                    style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MessagesStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore
          .collection('sessions')
          .document('$sessionId')
          .collection('listOfMessages')
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
          );
        }
        final messages = snapshot.data.documents.reversed;
        List<MessageBubble> messageBubbles = [];
        for (var message in messages) {
          final messageText = message.data['text'];
          final messageSender = message.data['sender'];

          final messageBubble = MessageBubble(
            sender: messageSender,
            text: messageText,
            isMe: sessionUsername == messageSender,
          );

          messageBubbles.add(messageBubble);
        }
        return Expanded(
          child: ListView(
            reverse: true,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            children: messageBubbles,
          ),
        );
      },
    );
  }
}
