import 'package:bac_note/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
