import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 9, 54),

      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI Calculator", style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 24, 37, 110)
      ),

      body: Column(
        children: [
          Row(
            children: [
               
              Padding(padding:EdgeInsets.all(20)),    

              ElevatedButton.icon(onPressed: () {},
               icon: Icon(Icons.female) ,
               label: Text('FEMALE'),
               ),

               Padding(padding:EdgeInsets.all(40)),

               ElevatedButton.icon(onPressed: () {},
               icon: Icon(Icons.male) ,
               label: Text('MALE'),
               )
            ],
          )
        ]
      ),
      

    );
  }
  
}
