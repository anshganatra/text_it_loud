import 'package:flutter/material.dart';
import 'package:text_it_loud/screens/welcome_scren.dart';

const TextStyle kTextItLoudHeadingStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: "Volkhov",
  color: Colors.black,
  decoration: TextDecoration.none,
  fontWeight: FontWeight.w500,
);

List<String> supportedLanguages = [
  'English',
  'Bengali',
  'Gujarati',
  'Hindi',
  'Kannada',
  'Marathi',
  'Tamil',
  'Telugu',
  'Urdu',
  'Afrikaans',
  'Arabic',
  'Belarusian',
  'Bulgarian',
  'Catalan',
  'Czech',
  'Welsh',
  'Danish',
  'German',
  'Greek',
  'Esperanto',
  'Spanish',
  'Estonian',
  'Persian',
  'Finnish',
  'French',
  'Irish',
  'Galician',
  'Hebrew',
  'Croatian',
  'Haitian',
  'Hungarian',
  'Indonesian',
  'Icelandic',
  'Italian',
  'Japanese',
  'Georgian',
  'Korean',
  'Lithuanian',
  'Latvian',
  'Macedonian',
  'Malay',
  'Maltese',
  'Dutch',
  'Norwegian',
  'Polish',
  'Portuguese',
  'Romanian',
  'Russian',
  'Slovak',
  'Slovenian',
  'Albanian',
  'Swedish',
  'Swahili',
  'Thai',
  'Tagalog',
  'Turkish',
  'Ukrainian',
  'Vietnamese',
  'Chinese'
];

String defaultUsername = '';
String sessionUsername;
void setDefaultUsername(String newUsername) {
  defaultUsername = newUsername;
}

String getDefaultUsername() {
  return defaultUsername;
}

void setSessionUsername(String newUsername) {
  sessionUsername = newUsername;
}

void setSessionUsernameToNull() {
  sessionUsername = '';
}

String sessionPassword = '';
void setSessionPassword(String newSessionPassword) {
  sessionPassword = newSessionPassword;
}

String getSessionPassword() {
  if (sessionPassword.length != 0) {
    return sessionPassword;
  } else {
    return null;
  }
}

String sessionName = '';
void setSessionName(String newSessionName) {
  sessionName = newSessionName;
}

String getSessionName() {
  if (sessionName.length != 0) {
    return sessionName;
  } else {
    return null;
  }
}

String defaultLanguage = 'English';
void setDefaultLanguage(String newDefaultLanguage) {
  defaultLanguage = newDefaultLanguage;
}

String getDefaultLanguage() {
  return defaultLanguage;
}

String sessionId = '';
void setSessionId(String newSessionId) {
  sessionId = newSessionId;
}

String getSessionId() {
  if (sessionName.length != 0) {
    return sessionId;
  } else {
    return null;
  }
}

// String defaultSessionRole = 'Listener';
String sessionRole;
void setSessionRole(String newSessionRole) {
  sessionRole = newSessionRole;
}
// String getSessionRole() {
//   if (sessionRole.length != 0) {
//     return sessionRole;
//   } else {
//     return defaultSessionRole;
//   }
// }

Future<void> showExitDialog(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Exit Session',
          style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                'You are about to exit a session.',
                style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
              ),
              Text(
                'Are you sure?',
                style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Yes',
              style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
            ),
            onPressed: () {
              setSessionUsernameToNull();
              setSessionName('');
              setSessionPassword('');
              Navigator.pushNamed(context, '/');
            },
          ),
          FlatButton(
            child: Text(
              'No',
              style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}

Future<void> showInvalidDataDialog(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Invalid Input',
          style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                'The data entered in the input fields is invalid.',
                style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
              ),
              Text(
                'Please try again.',
                style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'OK',
              style: kTextItLoudHeadingStyle.copyWith(fontSize: 16.0),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
