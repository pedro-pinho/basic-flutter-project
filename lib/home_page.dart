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
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
          child: GestureDetector(
              child: Text('Counter: $counter',
                  style: TextStyle(
                      fontSize:
                          20)), //Need to explicit command this whole method to be rebuild
              onTap: () {
                setState(() {
                  //setState tell the compiler to rebuild everytime user taps the text
                  counter++;
                });
              })),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
