import 'package:flutter/material.dart';

//import 'RoundIconButton.dart';

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
            Padding(padding: EdgeInsets.all(20)),
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
                //style: ButtonStyle(backgroundColor: Color.fromARGB(255, 24, 37, 110),),
              ),
            ),
   
            Padding(padding: EdgeInsets.all(40)),

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
                //style: ButtonStyle(backgroundColor: Color.fromARGB(255, 24, 37, 110),),
                
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(100)),
        

        


        Row(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Container(
              width: 140,
              height: 140,
              color: Color.fromARGB(255, 24, 37, 110),
              child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text('WEIGHT', style: TextStyle(color: Colors.white),), 
                        Text(weight.toString(), style: TextStyle(color: Colors.white),), 
                        ],
                    ),         
              ),

              Padding(padding: EdgeInsets.all(20)),

              Container(
              width: 140,
              height: 140,
              color: Color.fromARGB(255, 24, 37, 110),
              child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text('AGE', style: TextStyle(color: Colors.white),), 
                        Text(weight.toString(), style: TextStyle(color: Colors.white),),                      
                        ],
                    ),     
              ),
          ],
        ),  

        Padding(padding: EdgeInsets.all(20)),

        TextButton(
          onPressed: () {},
          child: Text('CALCULATE', style: TextStyle(color: Colors.white),),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
          ),
          


      ]),
    );
  }
}
