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

class ResultWidget extends StatelessWidget {
  ResultWidget(
    this.moyenne,
    this.style,
    this.padding,
  );
  final double padding;
  final TextStyle style;
  final double moyenne;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      height: 190,
      width: 340,
      decoration: BoxDecoration(
        color: Colors.orange[400],
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(moyenne.toStringAsFixed(3), style: style),
            Container(
                padding: EdgeInsets.only(top: padding),
                child: Text('/ 20', style: kPercentStyle)),
          ],
        ),
      ),
    );
  }
}
