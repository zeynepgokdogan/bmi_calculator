import 'dart:math';

import 'package:bmi_calcutor/age_weight_widget.dart';
import 'package:bmi_calcutor/height_widget.dart';
import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Gender selectedGender;
  int weight = 20;
  int age = 20;
  int height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 9, 54),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 24, 37, 110),
      ),
      body: Column(children: [
        Padding(padding: EdgeInsets.all(20)),
        Row(
          children: [
            Padding(padding: EdgeInsets.all(35)),
            Container(
              height: 100,
              width: 120,
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                icon: Icon(Icons.female),
                label: Text('FEMALE'),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.redAccent; //<-- SEE HERE
                      return null; },),),
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Container(
              height: 100,
              width: 120,
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                icon: Icon(Icons.male),
                label: Text('MALE'),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.redAccent; //<-- SEE HERE
                      return null; },),),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(20)),
        HeightWidget(
          onChange: (heightVal) {
            height = heightVal;
          },
        ),
        Padding(padding: EdgeInsets.all(20)),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            AgeWeightWidget(
                onChange: (ageVal) {
                  age = ageVal;
                },
                title: 'AGE',
                initValue: 20,
                min: 0,
                max: 90),
            SizedBox(
              width: 55,
            ),
            AgeWeightWidget(
                onChange: (weightVal) {
                  weight = weightVal;
                },
                title: 'WEIGHT',
                initValue: 20,
                min: 0,
                max: 200)
          ],
        ),
        Padding(padding: EdgeInsets.all(20)),
        TextButton(
          onPressed: () {},
          child: Text(
            'CALCULATE',
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red)),
        ),
        SizedBox(width: 20,)
      ]),
    );
  }
}
