//ignore_for_file:prefer_const_constructors

import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'results_page.dart';

const bottomContainerHeight = 80.0;

const colorOfContainer = Color(0XFF1D1E33);
const activeContainerColor = Color(0XFF111328);
const bottomContainerColor = Color(0XFFEB1555);
enum Gender {
  male,
  female,
  none,
}
Gender selectedGender = Gender.none;

// Color maleCardColor = colorOfContainer;
// Color femaleCardColor = colorOfContainer;
// //1 for male ,2 for female
// void updateColor(Gender selectedGender) {
//   selectedGender == Gender.male?  : maleCardColor = colorOfContainer;
//   if (selectedGender == Gender.male) {
//     if (maleCardColor == colorOfContainer) {
//       maleCardColor = activeContainerColor;
//       femaleCardColor = colorOfContainer;
//     } else {
//       maleCardColor = colorOfContainer;
//     }
//   } else {
//     if (femaleCardColor == colorOfContainer) {
//       femaleCardColor = activeContainerColor;
//       maleCardColor = colorOfContainer;
//     } else {
//       femaleCardColor = colorOfContainer;
//     }
//   }
// }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 70;
  int age = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontFamily: 'RobotoSlab',
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.male
                          ? activeContainerColor
                          : colorOfContainer,
                      cardChild: IconContent(
                        displayText: Text(
                          'MALE',
                          style: TextStyle(
                            fontFamily: 'RobotoSlab',
                            fontSize: 15.0,
                          ),
                        ),
                        displayIcon: Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.female
                          ? activeContainerColor
                          : colorOfContainer,
                      cardChild: IconContent(
                        displayText: Text(
                          'FEMALE',
                          style: TextStyle(
                            fontFamily: 'RobotoSlab',
                            fontSize: 15.0,
                          ),
                        ),
                        displayIcon: Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: colorOfContainer,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontFamily: 'RobotoSlab',
                      fontSize: 15.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'CM',
                        style: TextStyle(
                          fontFamily: 'RobotoSlab',
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      trackHeight: 1,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 25.0,
                      ),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 80.0,
                      max: 220.0,
                      inactiveColor: Color(0XFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: colorOfContainer,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontFamily: 'RobotoSlab',
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: colorOfContainer,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontFamily: 'RobotoSlab',
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontFamily: 'RobotoSlab',
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.calculateBMI(),
                    condition: calc.printCondition(),
                    comments: calc.printComment(),
                  ),
                ),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE!!',
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              color: Color(0XFFEB1555),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
