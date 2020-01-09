import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  
  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        // title: Text(
        //   'BMI Calculator',
        //   style: TextStyle(
        //     fontSize: 25.0,
        //     color: primaryTextColor,
        //     fontFamily: 'Pacifico',
        //   ),
        // ),
      ),
      // body: Container(
      //   child: Center(
      //     child: Text(
      //       '23.6',
      //       style: knumberStyle,
      //     ),
      //   ),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                  child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultsTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kDescriptionStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
              child: Container(
              margin: EdgeInsets.all(10.0),
              height: kBottomContainerHeight,
              child: Center(
                  child: Text(
                  'RE-CALCULATE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 25.0,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: thirdColour,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ],
      ),

    );
  }
}