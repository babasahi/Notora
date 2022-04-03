import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// COLORS:
const Color kMainColor = Colors.white;
Color kSecondaryColor = Color(0xFF0061EF);
Color kAppBarColor = Colors.blueAccent.shade400;
Color kTertiaryColor = Color(0xFFD3E3FD);
Color kBackgroundColor = Colors.white70;
Color kUnSelectedNavigationIconColor = Color(0xFFD3E3FD);
Color? kIconColor = Colors.black;
Color kSelectedNaviagtionIcon = Colors.deepPurpleAccent;
double kAppBarElevation = 1.5;

final kMainLogo = GoogleFonts.ubuntuMono(
    textStyle: TextStyle(
  color: kSecondaryColor,
  letterSpacing: -1,
  fontSize: 60,
  fontWeight: FontWeight.w900,
));
final TextStyle kLogoStyle = GoogleFonts.ubuntu(
    textStyle: TextStyle(
  color: Colors.black,
  fontSize: 34,
  fontWeight: FontWeight.bold,
));

final TextStyle kMainResultStyle = GoogleFonts.ubuntu(
    textStyle: TextStyle(
  fontSize: 80,
  fontWeight: FontWeight.bold,
));

final TextStyle kPercentStyle = GoogleFonts.ubuntu(
    textStyle: TextStyle(
  fontSize: 20,
  color: Colors.black,
  fontFamily: 'Ubuntu',
  fontWeight: FontWeight.bold,
));

const TextStyle kEmojiStyle = TextStyle(fontSize: 60);
final TextStyle kCongratulationLabelStyle = GoogleFonts.ubuntu(
    textStyle: TextStyle(
  fontSize: 52,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
));
final TextStyle kMainResultLabelStyle = GoogleFonts.inconsolata(
    textStyle: TextStyle(
  fontSize: 42,
  fontWeight: FontWeight.bold,
));

final TextStyle kSecondaryResultLabelStyle = GoogleFonts.inconsolata(
    textStyle: TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.normal,
));

final kWhoAreWeStyle = GoogleFonts.inconsolata(
    textStyle: TextStyle(
  letterSpacing: 1,
  fontWeight: FontWeight.normal,
  fontSize: 22,
));

final TextStyle kSecondaryResultStyle = GoogleFonts.titilliumWeb(
    textStyle: TextStyle(
  fontSize: 55,
  fontFamily: 'TitilliumWeb',
  fontWeight: FontWeight.bold,
));
final TextStyle kSubjectNameStyle = GoogleFonts.inconsolata(
    textStyle: TextStyle(
  fontSize: 28,
  color: Colors.black,
  fontWeight: FontWeight.bold,
));
