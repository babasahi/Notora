import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  ResultWidget(
    this.moyenne,
    this.style,
    this.padding,
    this.color,
  );
  final double padding;
  final TextStyle style;
  final double moyenne;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      height: 190,
      width: 340,
      decoration: BoxDecoration(
        color: color,
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
