import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultIntp;
  final String resultTxt;

  ResultPage(
      {required this.resultIntp,
      required this.bmiResult,
      required this.resultTxt});

  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 9, 54),
      appBar: AppBar(
        title: Text('Your Result:'),
        
      ),
      
  
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(50)),
          Container( 
            color: Colors.blue,
            width: 400,
            height: 400,
            child: Center(
              child: Column(
                children: [
                 Padding(padding: EdgeInsets.all(20)),
                 Text(resultTxt,style: TextStyle(color: Colors.red,fontSize: 30),),
                 Padding(padding: EdgeInsets.all(20)),
                 Text(bmiResult,style: TextStyle(color: Colors.white,fontSize: 70),),
                 Padding(padding: EdgeInsets.all(20)),
                 Text(resultIntp,style: TextStyle(color: Colors.red,fontSize: 30),),
                 Padding(padding: EdgeInsets.all(20)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
