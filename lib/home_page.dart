import 'package:flutter/material.dart';

import 'app_controller.dart';

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
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitcher()],
      ),
      body: Container(
          // center horizontally
          width: double.infinity,
          height: double.infinity,
          // Column is not scrollable
          // List view is scrollable
          child: ListView(scrollDirection: Axis.vertical, //default is vertical
              children: [
                Text('Counter: $counter'),
                Container(
                  //blank space
                  height: 10,
                ),
                CustomSwitcher(),
                Container(
                  //blank space
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.black,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.black,
                    ),
                  ],
                )
              ])),
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

class CustomSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
