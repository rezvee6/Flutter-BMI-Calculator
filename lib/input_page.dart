import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';

const primaryTextColor = Color(0xFFff6f5e);
const secondaryTextColor = Colors.white;
const activeCardColour = Color(0xFFff6f5e); 
const inactiveCardColour =  Colors.white;
const backgroundColour = Color(0xFFf5f0e3);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  Color maleText = primaryTextColor;
  Color femaleText = primaryTextColor;
  // 1 = male
  // 2 = female
  void updateColour(Gender gender){
    if (gender == Gender.male){
      if (maleCardColour == inactiveCardColour){
        maleCardColour = activeCardColour;
        femaleCardColour = inactiveCardColour;
        maleText = inactiveCardColour;
        femaleText = activeCardColour;
      }
    }

    if (gender == Gender.female){
      if (femaleCardColour == inactiveCardColour){
        femaleCardColour = activeCardColour;
        maleCardColour = inactiveCardColour;
        femaleText = inactiveCardColour;
        maleText = activeCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 25.0,
            color: primaryTextColor,
            fontFamily: 'Pacifico',
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColour(Gender.male);
                        });
                      },
                      child: ReusableCard(
                      colour: maleCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        iconText: 'Male',
                        textColour: maleText,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                       setState(() {
                          updateColour(Gender.female);
                        });
                    },
                    child: ReusableCard(
                    colour: femaleCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      iconText: 'Female',
                      textColour: femaleText,
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: activeCardColour,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColour,
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
