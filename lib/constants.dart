import 'package:flutter/material.dart';

const TextStyle kTextItLoudHeadingStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: "Volkhov",
  color: Colors.black,
  decoration: TextDecoration.none,
  fontWeight: FontWeight.w500,
);

List<String> supportedLanguages = ['English',	'Bengali',	'Gujarati',	'Hindi',	'Kannada',	'Marathi',	'Tamil',	'Telugu',	'Urdu',	'Afrikaans',	'Arabic',	'Belarusian',	'Bulgarian',	'Catalan',	'Czech',	'Welsh',	'Danish',	'German',	'Greek',	'Esperanto',	'Spanish',	'Estonian',	'Persian',	'Finnish',	'French',	'Irish',	'Galician',	'Hebrew',	'Croatian',	'Haitian',	'Hungarian',	'Indonesian',	'Icelandic',	'Italian',	'Japanese',	'Georgian',	'Korean',	'Lithuanian',	'Latvian',	'Macedonian',	'Malay',	'Maltese',	'Dutch',	'Norwegian',	'Polish',	'Portuguese',	'Romanian',	'Russian',	'Slovak',	'Slovenian',	'Albanian',	'Swedish',	'Swahili',	'Thai',	'Tagalog',	'Turkish',	'Ukrainian',	'Vietnamese',	'Chinese'];


String defaultUsername='';
String sessionUsername;
void setDefaultUsername(String newUsername){
  defaultUsername=newUsername;
}
String getDefaultUsername(){
  return defaultUsername;
}
void setSessionUsername(String newUsername){
  sessionUsername=newUsername;
}



String sessionName='';
void setsessionName(String newSessionName){
  sessionName=newSessionName;
}
String getsessionName(){
  if(sessionName.length!=0){
    return sessionName;
  } else {
    return null;
  }
}
bool isRoleDropdown;
String setDropDownDefaultValue(){
  if(isRoleDropdown){
    return 'Listener';
  } else {
    return 'English';
  }
}
void setDropdownRole(bool isCalledForLanguages){
  isRoleDropdown=isCalledForLanguages?false:true;
}