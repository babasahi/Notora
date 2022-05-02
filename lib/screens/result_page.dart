import 'package:bac_note/components/result_remark_widget.dart';
import 'package:bac_note/components/result_widget.dart';
import 'package:bac_note/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum result {
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
          Congratulation(),
          SizedBox(height: MediaQuery.of(context).size.height / 6),
          GradesWidget()
        ],
      ),
    );
  }
}

class LabelWidget extends StatefulWidget {
  const LabelWidget({Key? key}) : super(key: key);

  @override
  State<LabelWidget> createState() => _LabelWidgetState();
}

class _LabelWidgetState extends State<LabelWidget> {
  result gradeResult = result.success;
  double grade = 0;
  String label = '';
  String imageAsset = '';
  void setAssets() {
    if (gradeResult == result.success) {
      label = 'Congratulations !';
      imageAsset = 'assets/images/succes.jpg';
    } else if (gradeResult == result.secondChance) {
      label = 'You did it !';
      imageAsset = 'assets/images/chance.jpg';
    } else {
      label = 'Failure is succes in progress !';
      imageAsset = 'assets/images/failure.jpg';
    }
  }

  @override
  void initState() {
    grade = Provider.of<Subjects>(context, listen: false).getAverageGrade();
    if (grade > 8 && grade < 9) {
      gradeResult = result.secondChance;
    } else if (grade > 9) {
      gradeResult = result.success;
    } else {
      gradeResult = result.failure;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text(label), Image(image: AssetImage(imageAsset))],
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
