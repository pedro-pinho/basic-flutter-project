import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: GestureDetector(
                child: Text(
                    'Contador: $counter'), //Need to explicit command this whole method to be rebuild
                onTap: () {
                  setState(() {
                    //setState tell the compiler to rebuild everytime user taps the text
                    counter++;
                  });
                })));
  }
}
