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
                    //Manual routing
                    //Go to next page, but dont discard this one
                    /* Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Home())); */
                    //Go to next page, and discard this one
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Home()));
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
