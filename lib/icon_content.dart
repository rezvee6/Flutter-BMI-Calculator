import 'package:flutter/material.dart';
import 'constants.dart';

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
          iconText, 
            style:TextStyle(
              fontSize: 18.0,
              color: textColour,
            ),
        ),
      ],
    );
  }
}