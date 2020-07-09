import 'package:flutter/material.dart';
import 'constants.dart';

class ResuableCard extends StatelessWidget {
  ResuableCard({this.onTap, this.cardChild, this.color});
  final Function onTap;
  final Widget cardChild;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          child: cardChild,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: EdgeInsets.all(15.0),
        ));
  }
}
