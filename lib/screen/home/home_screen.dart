import 'package:flutter/material.dart';
import 'package:mirraura/screen/home/widget/login_and_register.dart';
import 'package:mirraura/screen/home/widget/slider_dot.dart';
import 'package:mirraura/constant.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text('********'),
          SlideDot(),
          SizedBox(
            height: 20,
          ),
          Text(
            'FIND YOUR REFLECTION',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: spPrimaryTextColor,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          LoginandRegister(),
        ],
      ),
    );
  }
}
