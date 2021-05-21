import 'package:flutter/material.dart';
import 'package:mirraura/pages/home.dart';
import 'package:mirraura/pages/login.dart';
import 'package:mirraura/pages/signup.dart';

import '../constant.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[50],//spPrimaryColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/shopping-cart.png', height: 200, width: 200),
              Center(
                child: Text(
                  'Welcome To',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Julius Sans One',
                  ),
                ),
              ),
              Text(
                'MIRRAURA',
                style: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Fredericka the Great',
                  fontSize: 60.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Find your Reflection',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 30.0,
                  letterSpacing: 2,
                  fontFamily: 'Julius Sans One',
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new Login()));
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Julius Sans One',
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      color: Colors.black),
                  SizedBox(width: 20.0),
                  RaisedButton(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new Signup()));
                      },
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Julius Sans One',
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      color: Colors.white),
                ],
              ),
              // SignInButton(
              //   Buttons.Google,
              //   text: "Sign up with Google",
              //   onPressed: () {},
              // )
            ],
          ),
        ));
  }
}
