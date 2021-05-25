import 'package:flutter/material.dart';
import 'package:mirraura/pages/home.dart';
import 'package:mirraura/pages/welcome.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 7);

    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Welcome();
          },
        ),
        (route) => false,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              'MIRRAURA',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Fredericka the Great',
                fontSize: 60.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
