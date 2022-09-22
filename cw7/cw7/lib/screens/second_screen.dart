//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:cw7/screens/home_screen.dart';

class SecondScreen extends StatelessWidget {
   SecondScreen({
    Key? key,
    required this.chosenColor,
    required this.text
   }) : super(key: key);

   final Color chosenColor;
   final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        backgroundColor: chosenColor,
      ),
      body: Container(
        color: chosenColor,
        child:  Center(
          child: Text(text),
          ),
      ),
    );
  }
}