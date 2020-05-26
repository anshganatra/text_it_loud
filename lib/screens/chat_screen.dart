import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:text_it_loud/components/message_bubble.dart';
import 'package:text_it_loud/constants.dart';

Firestore _firestore= Firestore.instance;

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

// class MessagesStream extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<DocumentSnapshot>(
//       stream: _firestore.collection('messages').document('sessionid1').snapshots(),
//       builder: (context, snapshot) {
//         if (!snapshot.hasData) {
//           return Center(
//             child: CircularProgressIndicator(
//               backgroundColor: Colors.lightBlueAccent,
//             ),
//           );
//         }
//         final messages = snapshot.data.documents.reversed;
//         List<MessageBubble> messageBubbles = [];
//         for (var message in messages) {
//           final messageText = message.data['text'];
//           final messageSender = message.data['sender'];

//           final currentUser = loggedInUser.email;

//           final messageBubble = MessageBubble(
//             sender: messageSender,
//             text: messageText,
//             isMe: currentUser == messageSender,
//           );

//           messageBubbles.add(messageBubble);
//         }
//         return Expanded(
//           child: ListView(
//             reverse: true,
//             padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
//             children: messageBubbles,
//           ),
//         );
//       },
//     );
//   }
// }