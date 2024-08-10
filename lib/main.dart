//ignore_for_file:prefer_const_constructors
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0XFF0A0E21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0XFF0A0E21),
        ),
      ), //To change specific properties of the dark theme
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Color(0XFF0A0E21),
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: Color(0XFF0A0E21),
      //   ),
      //   colorScheme: ColorScheme.fromSwatch().copyWith(
      //     secondary: Colors.blue, // Your accent color
      //   ),
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),//Example of defining everything by our own!
      // ),
      home: InputPage(),
    );
  }
}
