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
          backgroundColor: Color.fromARGB(255, 24, 37, 110)),
      body: Column(children: [

        Padding(padding: EdgeInsets.all(40)),

        Row(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            SizedBox(
              height: 100,
              width: 100,
              child: ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  selectedGender = Gender.female;});
              },
              icon: Icon(Icons.female),
              label: Text('FEMALE'),
              ),
            ),

            Padding(padding: EdgeInsets.all(40)),

            SizedBox(
              height: 100,
              width: 100,
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                  selectedGender = Gender.male;});
                },
                icon: Icon(Icons.male),
                label: Text('MALE'),
              ),
            ),
          ],
        ),

        
      ]),
    );
  }
}
