import 'package:bac_note/components/result_remark_widget.dart';
import 'package:bac_note/components/result_widget.dart';
import 'package:bac_note/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum Result {
  success,
  failure,
  secondChance,
}

class ResultPage extends StatefulWidget {
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 36,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Provider.of<Subjects>(context, listen: false).getAverageGrade() > 8
              ? Congratulation()
              : Consolation(),
          GradesWidget()
        ],
      ),
    );
  }
}

class GradesWidget extends StatelessWidget {
  const GradesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResultWidget(
            label: 'Grade',
            value: (Provider.of<Subjects>(context, listen: false)
                .getAverageGrade())),
        ResultWidget(
            label: 'Orientation',
            value: (Provider.of<Subjects>(context, listen: false)
                .getOrientationGrade()))
      ],
    );
  }
}
