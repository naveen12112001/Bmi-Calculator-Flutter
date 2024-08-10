import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0.0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String printCondition() {
    if (_bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (_bmi >= 18.5 && _bmi <= 24.5) {
      return 'NORMAL';
    } else if (_bmi >= 25.0 && _bmi <= 29.9) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 30.0 && _bmi <= 34.9) {
      return 'OBESE';
    } else {
      return 'EXTREMELY OBESE';
    }
  }

  String printComment() {
    if (printCondition() == 'UNDERWEIGHT') {
      return 'Try following a healthy meal and add more vegetables and meat to your diet.Exercise regularly';
    } else if (printCondition() == 'NORMAL') {
      return 'You have a normal body weight.Congrats!';
    } else if (printCondition() == 'OVERWEIGHT') {
      return 'You have a little higher than normal bmi.Try following a diet routine ';
    } else if (printCondition() == 'OBESE') {
      return 'You have a higher BMI.Engage yourself in more workout and diet sessions';
    } else {
      return 'You have a extremely higher BMI.Engage yourself in harder workouts and maintain a strict diet plan';
    }
  }
}
