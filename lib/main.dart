import 'package:flutter/material.dart';
import './clothes_question.dart';
import 'clothes_answer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState (){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {


  void _iWasTapped(){
    if(_questionIndex<questions.length-1){
    setState(() {_questionIndex += 1;});
    }
    print("I was tapped");
  }

  var questions = [
    {'question':'Select shirt color', "answer": ["Red", "Navy", "Sky blue", "Emerald green"]},
    {'question':'Select the color of pants', "answer": ["Red", "Navy", "Sky blue", "Emerald green", "Dark green", "Gray"]},
    {'question':'Select brand of sneakers', "answer": ["Nike", "Adidas", "Converse"]},
    {'question':'Your choice has been saved', "answer": ["Congratulations"]},
  ];
  
  var _questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '191097 Blagoj Petkov',
      home: Scaffold(
        appBar: AppBar(
          title: Text('191097 Blagoj Petkov'), backgroundColor: Color.fromARGB(255, 210, 136, 198),
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]['question'] as String),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer){ return ClothesAnswer(_iWasTapped, answer);}),
          ],
        ) 
      ),
    );
  }
}