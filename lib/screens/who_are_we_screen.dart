import 'package:bac_note/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WhoAreWePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BacNote(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Center(
                child: Padding(
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
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 38),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('assets/images/saleh.jpg'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: [
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
              ),
              SizedBox(
                height: 90,
              ),
              Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  children: [
                    SizedBox(
                      height: 68,
                    ),
                    Text(
                      '',
                      style: TextStyle(
                        fontFamily: 'Inconsolata',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 68,
                    ),
                    Text(
                      '',
                      style: TextStyle(
                        fontFamily: 'Inconsolata',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 68,
                    ),
                    Text(
                      '',
                      style: TextStyle(
                        fontFamily: 'Inconsolata',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  Text(
                    'Contact Us',
                    style:
                        TextStyle(fontFamily: 'Source Sans Pro', fontSize: 32),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Icon(Icons.facebook),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Icon(Icons.language),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Icon(Icons.email),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.phone,
                        ),
                        onTap: () {},
                      ),
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
            ],
          ),
        ),
      ),
    );
  }
}
