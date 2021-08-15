import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class Congratulation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: EdgeInsets.only(top: 22, bottom: 12),
      child: Column(
        children: [
          AnimatedTextKit(
            isRepeatingAnimation: true,
            totalRepeatCount: 2,
            animatedTexts: [
              ColorizeAnimatedText(
                'Admis',
                textStyle: kCongratulationLabelStyle,
                colors: [
                  Colors.black,
                  Colors.green,
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          AnimatedTextKit(
            isRepeatingAnimation: true,
            totalRepeatCount: 40,
            animatedTexts: [
              ScaleAnimatedText(
                '🎉',
                textStyle: kEmojiStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Consolation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: EdgeInsets.only(top: 22, bottom: 12),
      child: Column(
        children: [
          AnimatedTextKit(
            isRepeatingAnimation: true,
            totalRepeatCount: 2,
            animatedTexts: [
              ColorizeAnimatedText(
                'Non Admis',
                textStyle: kCongratulationLabelStyle,
                colors: [
                  Colors.black,
                  Colors.orangeAccent,
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          AnimatedTextKit(
            isRepeatingAnimation: true,
            totalRepeatCount: 40,
            animatedTexts: [
              ScaleAnimatedText(
                '💔',
                textStyle: kEmojiStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
