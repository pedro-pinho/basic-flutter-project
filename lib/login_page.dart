import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
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
              Text('My first flutter project',
                  style: TextStyle(color: Colors.white)),
              Container(height: 20),
              Text('Now with new homepage!',
                  style: TextStyle(color: Colors.white)),
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 20, bottom: 12),
                child: Column(
                  children: [
                    RaisedButton(
                      textColor: Colors.purple,
                      color: Colors.white,
                      onPressed: () {
                        initiateFacebookLogin(context);
                      },
                      child: Text('Login with Facebook'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/purple-background.jpg',
                fit: BoxFit.cover)),
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
        _body(),
      ],
    ));
  }
}

void initiateFacebookLogin(context) async {
  var facebookLogin = FacebookLogin();
  var facebookLoginResult =
      await facebookLogin.logInWithReadPermissions(['email']);
  switch (facebookLoginResult.status) {
    case FacebookLoginStatus.error:
      print(facebookLoginResult.errorMessage);
      break;
    case FacebookLoginStatus.cancelledByUser:
      print("CancelledByUser");
      break;
    case FacebookLoginStatus.loggedIn:
      print("LoggedIn, token?", facebookLoginResult.accessToken.token);
      Navigator.of(context).pushReplacementNamed('/home');
      break;
  }
}
