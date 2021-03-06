import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input_page.dart';
import 'constants.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
  statusBarIconBrightness: Brightness.dark,
  statusBarColor: backgroundColour, 
));
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: backgroundColour,
      ),
      home: InputPage(),
    );
  }
}

