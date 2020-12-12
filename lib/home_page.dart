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
      body: Container(
          height: 200,
          width: 200,
          color: Colors.black,
          child: Center(
            //Without the Center, the black square doesn't even render, even if it's smaller
            //The Center is a SingleChildRenderObjectWidget, it's like another "person" that draws one more thing
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          )),
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
