import 'dart:math';

class BmiValues {
  BmiValues(this.height, this.weight);
  final int height;
  final int weight;

  late double bmi;

  String calculateBmi() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (25 > bmi || bmi > 18.5) {
      return 'Normal';
    } else if (bmi > 25) {
      return 'Overweight';
    }
    return 'Try again';
  }

  String getInterpretatiton() {
    if (bmi < 18.5) {
      return '"You are below your ideal weight.You must have an adequate and balanced diet!"';
    } else if (25 > bmi || bmi > 18.5) {
      return '"You are at your ideal weight. Just keep your weight off."';
    } else if (bmi > 25) {
      return '"You are above your ideal weight.You need to reach your ideal weight by doing a regular diet and exercise!"';
    }
    return '"ERROR"';
  }
}
