import 'package:bac_note/models/subject.dart';
import 'package:bac_note/screens/main_screen.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WhoAreWe extends StatefulWidget {
  @override
  State<WhoAreWe> createState() => _WhoAreWeState();
}

class _WhoAreWeState extends State<WhoAreWe> {
  final String _landingPage = "https://mohamed-abdelahi-haibelty.github.io";
  final String _email =
      "mailto:<babesalehmahfoud@gmail.com>?subject=Hello Telmidi&body=Hello";
  final String _linkedin = 'linkedin.com/in/babe-saleh-mahfoud-519b52200/';
  final String _facebook = "";
  final String _call = "tel:+222 31 04 81 16";
  Future<void> sendEmail(String type) async {
    switch (type) {
      case "website":
        await canLaunch(_landingPage) ? launch(_landingPage) : print('error');

        break;
      case "email":
        await launch(_email);
        break;

      case "facebook":
        await launch(_facebook);
        break;

      case "call":
        await launch(_call);
        break;

      case "linkedin":
        await launch(_linkedin);
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
        leading: ReturnIconWidget(context),
        elevation: kAppBarElevation,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Text(
                    'Telmidi',
                    style: kMainLogo,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
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
                            AssetImage('assets/images/whoarewe/saleh.jpg'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Babe Saleh Mahfoud',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
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
                    SizedBox(
                      height: 68,
                    ),
                    SelectableText(
                      WhoAreWeData().part2,
                      style: kWhoAreWeStyle,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 68,
                    ),
                    SelectableText(
                      WhoAreWeData().part3,
                      style: kWhoAreWeStyle,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 68,
                    ),
                    SelectableText(
                      WhoAreWeData().part4,
                      style: kWhoAreWeStyle,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 38,
                    ),
                    SelectableText(
                      WhoAreWeData().part5,
                      style: kWhoAreWeStyle.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'Source Sans Pro',
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
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
                    SizedBox(
                      height: 30,
                    ),
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
                            child: Icon(FontAwesomeIcons.phoneAlt,
                                color: kSecondaryColor)),
                        GestureDetector(
                            onTap: () {
                              sendEmail("linkedin");
                            },
                            child: Icon(FontAwesomeIcons.linkedin,
                                color: kSecondaryColor)),
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 6.0),
                        child: Text(
                          'All Rights Reserved, Telmidi 2021.',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
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

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 32,
          ),
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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Text(
                'Telmidi',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/saleh.jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: 48,
            ),
            AnimatedTextKit(isRepeatingAnimation: false, animatedTexts: [
              TyperAnimatedText(
                'Babe Saleh Mahfoud',
                textStyle: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 40,
                ),
                speed: Duration(milliseconds: 200),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
