import 'package:bac_note/services/provider.dart';
import 'package:bac_note/styling/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SubjectNoteWidget extends StatefulWidget {
  final int index;
  SubjectNoteWidget({required this.index});
  @override
  _SubjectNoteWidgetState createState() => _SubjectNoteWidgetState();
}

class _SubjectNoteWidgetState extends State<SubjectNoteWidget> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(48), topRight: Radius.circular(48)),
            ),
            child: Center(
              child: Text(
                Provider.of<Subjects>(context, listen: false)
                    .subjects[widget.index]
                    .note
                    .toString(),
                style: kPercentStyle.copyWith(
                    color: Provider.of<Subjects>(context, listen: false)
                                .getSubject(widget.index)
                                .note <
                            10
                        ? Colors.redAccent
                        : Colors.greenAccent),
              ),
            ),
          ),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(18),
                topLeft: Radius.circular(18),
              ),
            ),
            child: Center(
              child: Text(
                Provider.of<Subjects>(context, listen: false)
                    .getSubject(widget.index)
                    .name,
                style: kSubjectNameStyle,
              ),
            ),
          ),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ),
            ),
            child: Slider(
              value: Provider.of<Subjects>(context, listen: false)
                  .getSubject(widget.index)
                  .note,
              max: 20,
              min: 0,
              divisions: 80,
              onChanged: (double newValue) {
                setState(() {
                  Provider.of<Subjects>(context, listen: false)
                      .updateSubjectGrade(widget.index, newValue);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
