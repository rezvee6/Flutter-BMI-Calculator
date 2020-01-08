import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        // border: Border.all(color: Color(0xFF2962ff)),
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
