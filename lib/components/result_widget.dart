import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatefulWidget {
  ResultWidget({required this.label, required this.value});
  final String label;
  final double value;

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
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 84),
          child: Center(
              child: Text(
            widget.label,
            style:
                TextStyle(fontSize: 26, color: Colors.blueGrey.withGreen(20)),
          )),
        ),
        SizedBox(height: 2),
        Container(
          margin: EdgeInsets.only(bottom: 12, left: 12, right: 12, top: 0),
          padding: EdgeInsets.symmetric(vertical: 12.0),
          decoration: BoxDecoration(
            color: Colors.greenAccent.withOpacity(controller.value),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text((widget.value * ((controller.value))).toStringAsFixed(2),
                    style: kMainResultLabelStyle),
                Container(
                    padding: EdgeInsets.only(top: 12),
                    child: Text('/ 20', style: kPercentStyle)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
