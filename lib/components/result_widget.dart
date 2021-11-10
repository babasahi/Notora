import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatefulWidget {
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
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      height: 190,
      width: 340,
      decoration: BoxDecoration(
        color: widget.color.withOpacity(controller.value),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text((widget.moyenne).toStringAsFixed(3), style: widget.style),
            Container(
                padding: EdgeInsets.only(top: widget.padding),
                child: Text('/ 20', style: kPercentStyle)),
          ],
        ),
      ),
    );
  }
}
