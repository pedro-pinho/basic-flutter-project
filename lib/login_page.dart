import 'package:flutter/material.dart';

import 'home_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('assets/images/flutter-logo.png'),
              ),
              Container(height: 20),
              TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email')),
              SizedBox(
                height: 20,
              ),
              TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password')),
              SizedBox(
                height: 25,
              ),
              RaisedButton(
                onPressed: () {
                  if (email != null && password != null) {
                    //Automatic routing
                    Navigator.of(context).pushReplacementNamed('/home');
                    print('Success! $email, $password');
                  } else {
                    print('Trick of the light');
                  }
                },
                child: Text('Login'),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
