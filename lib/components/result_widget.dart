import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatefulWidget {
  ResultWidget({required this.grade});
  final double grade;

  @override
  _ResultWidgetState createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.greenAccent.withOpacity(controller.value),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(((widget.grade * ((controller.value))).toStringAsFixed(2)),
                style: kMainResultLabelStyle),
            Container(
                padding: EdgeInsets.only(top: 12),
                child: Text('/ 20', style: kPercentStyle)),
          ],
        ),
      ),
    );
  }
}
