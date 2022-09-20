import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  double? hight ;

  double? width ;

  Color color = Colors.red;

  List title = [
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(

          itemCount: 6,
          itemBuilder: (BuildContext context, int index) { return Text('item $index') ; },





        ),
      ),
    );
  }
  Widget contanir1 (double hight,double width,Color x){
    return Container(
      width: hight,
      height: width,
      color: x,
    );
  }
}
