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
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset('assets/images/user.png'),
              accountName: Text('Pedro'),
              accountEmail: Text('pedrosantospinhodev@gmail.com')),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('Home screen'),
              onTap: () {
                print('home');
              }),
          ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              subtitle: Text('End session'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              }),
        ]),
      ),
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              //blank space
              height: 10,
            ),
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
