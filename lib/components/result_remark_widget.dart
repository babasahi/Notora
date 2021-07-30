import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class Congratulation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 22, bottom: 12),
      child: Column(
        children: [
          Text(
            'Admis',
            style: kCongratulationLabelStyle,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            '🎉',
            style: kEmojiStyle,
          ),
        ],
      ),
    );
  }
}

class Consolation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 22, bottom: 12),
      child: Column(
        children: [
          Text(
            'Non Admis',
            style: kCongratulationLabelStyle,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            '💔',
            style: kEmojiStyle,
          ),
        ],
      ),
    );
  }
}
