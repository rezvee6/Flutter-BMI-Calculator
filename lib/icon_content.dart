import 'package:flutter/material.dart';

const primaryTextColor = Color(0xFF40bfc1);
const secondaryTextColor = Color(0xFF40bfc1);
class IconContent extends StatelessWidget {
  
  IconContent({this.icon, this.iconText, this.textColour});

  final IconData icon;
  final String iconText;
  final Color textColour;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: textColour, 
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText, style: TextStyle(
            fontSize: 18.0,
            color: textColour,
          ),
        )
      ],
    );
  }
}