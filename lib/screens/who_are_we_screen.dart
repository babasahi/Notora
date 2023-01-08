import 'package:bac_note/models/subject.dart';
import 'package:bac_note/screens/home_screen.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// WHO ARE WE
class WhoAreWe extends StatelessWidget {
  @override
  static const String _landingPage =
      "https://mohamed-abdelahi-haibelty.github.io";
  static const String _email =
      "mailto:<babesalehmahfoud@gmail.com>?subject=Hello Telmidi&body=Hello";
  static const String _linkedin =
      'linkedin.com/in/babe-saleh-mahfoud-519b52200/';
  static const String _facebook = "";
  static const String _call = "tel:+222 31 04 81 16";
  Future<void> sendEmail(String type) async {
    switch (type) {
      case "website":
        await canLaunchUrl(Uri.parse(_landingPage))
            ? launchUrl(Uri.parse(_landingPage))
            : print('error');

        break;
      case "email":
        await launchUrl(Uri.parse(_email));
        break;

      case "facebook":
        await launchUrl(Uri.parse(_facebook));
        break;

      case "call":
        await launchUrl(Uri.parse(_call));
        break;

      case "linkedin":
        await launchUrl(Uri.parse(_linkedin));
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back, color: Colors.black, size: 32),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MainPage(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Text('Telmidi', style: kMainLogo),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  color: kMainColor,
                  padding: EdgeInsets.symmetric(horizontal: 38),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage('assets/images/saleh.png')),
                      SizedBox(height: 12),
                      Text(
                        'Babe Saleh Mahfoud',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 60),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(12),
                child: Column(
                  children: [
                    SelectableText(
                      WhoAreWeData().part1,
                      style: kWhoAreWeStyle,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 68),
                    SelectableText(
                      WhoAreWeData().part2,
                      style: kWhoAreWeStyle,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 68),
                    SelectableText(WhoAreWeData().part3,
                        style: kWhoAreWeStyle, textAlign: TextAlign.justify),
                    SizedBox(height: 68),
                    SelectableText(WhoAreWeData().part4,
                        style: kWhoAreWeStyle, textAlign: TextAlign.justify),
                    SizedBox(height: 38),
                    SelectableText(
                      WhoAreWeData().part5,
                      style: kWhoAreWeStyle.copyWith(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Source Sans Pro'),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Container(
                color: kMainColor,
                child: Column(
                  children: [
                    Text(
                      'Contact Us',
                      style: TextStyle(
                          fontFamily: 'Telmidi',
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: kSecondaryColor),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                            onTap: () {
                              sendEmail("email");
                            },
                            child: Icon(FontAwesomeIcons.solidEnvelope,
                                color: kSecondaryColor)),
                        GestureDetector(
                            onTap: () {
                              sendEmail("website");
                            },
                            child:
                                Icon(Icons.language, color: kSecondaryColor)),
                        GestureDetector(
                            onTap: () {
                              sendEmail("facebook");
                            },
                            child: Icon(FontAwesomeIcons.facebookSquare,
                                color: kSecondaryColor)),
                        GestureDetector(
                            onTap: () {
                              sendEmail("call");
                            },
                            child: Icon(FontAwesomeIcons.phoneFlip,
                                color: kSecondaryColor)),
                        GestureDetector(
                            onTap: () {
                              sendEmail("linkedin");
                            },
                            child: Icon(FontAwesomeIcons.linkedin,
                                color: kSecondaryColor)),
                      ],
                    ),
                    SizedBox(height: 70),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 6.0),
                        child: Text(
                          'All Rights Reserved, Telmidi 2021.',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
