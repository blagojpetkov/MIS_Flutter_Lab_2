import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {

  VoidCallback tapped;
  String answerText;
  ClothesAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.only(bottom: 20),
    child: ElevatedButton(onPressed: tapped, child: Text(answerText, style: TextStyle(fontSize: 20, color: Colors.red),),
           style: ElevatedButton.styleFrom(backgroundColor: Colors.green))  
    );
  }
}