import 'package:flutter/material.dart';
import 'package:text_it_loud/screens/chat_screen.dart';
import 'package:text_it_loud/screens/create_join_screen.dart';
import 'package:text_it_loud/screens/create_screen.dart';
import 'package:text_it_loud/screens/join_screen.dart';
import 'package:text_it_loud/screens/session_details.dart';
import 'package:text_it_loud/screens/settings_screen.dart';
import 'package:text_it_loud/screens/transcripts_screen.dart';
import 'package:text_it_loud/screens/welcome_scren.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
    '/': (context)=>WelcomeScreen(),
    '/transcripts': (context)=>TranscriptListScreen(),
    '/createjoin':(context)=>CreateJoinScreen(),
    '/createscreen':(context)=>CreateScreen(),
    '/joinscreen': (context)=>JoinScreen(),
    '/chat': (context)=>ChatScreen(),
    '/settings': (context)=>SettingsScreen(),
    '/sessiondetails':(context)=>SessionDetails(),
        },
      );
  }
}