import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  static const String name = "/test";
  const TestScreen({super.key});

  @override
  State<TestScreen> createState(){
    return _TestScreenState();
  }
}

class _TestScreenState extends State<TestScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold();
  }


}