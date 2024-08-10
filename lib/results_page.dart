//ignore_for_file:prefer_const_constructors

import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.condition,
      required this.comments});
  final String bmiResult;
  final String condition;
  final String comments;

  Color colorReturn() {
    if (condition == 'UNDERWEIGHT') {
      return Colors.blue;
    } else if (condition == 'NORMAL') {
      return Colors.green;
    } else if (condition == 'OVERWEIGHT') {
      return Colors.orange;
    } else if (condition == 'OBESE') {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: colorOfContainer,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50.0),
                      child: Text(
                        condition,
                        style: TextStyle(
                          fontFamily: 'RobotoSlab',
                          color: colorReturn(),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      bmiResult,
                      style: TextStyle(
                        fontFamily: 'RobotoSlab',
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Normal BMI Range:',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'RobotoSlab',
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '18.5-25 kg/m2',
                      style: TextStyle(
                        fontFamily: 'RobotoSlab',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: Text(
                        comments,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'RobotoSlab',
                          fontSize: 15.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RECALCULATE BMI',
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontSize: 30.0,
                  ),
                ),
              ),
              color: Color(0xFFEB1555),
              width: double.infinity,
              height: 70.0,
            ),
          )
        ],
      ),
    );
  }
}
