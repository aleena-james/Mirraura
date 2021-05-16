import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/screen/login/widget/login_button.dart';
import 'package:mirraura/screen/login/widget/login_form.dart';
import 'package:mirraura/screen/login/widget/welcome_back.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          WelcomeBack(),
          LoginForm(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot password?',
              style: TextStyle(color: spPrimaryColor),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          LoginButton(),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 16,
            ),
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(style: TextStyle(color: Colors.grey), children: [
                TextSpan(text: 'Don\'t have an account? '),
                TextSpan(
                  text: 'Register',
                  style: TextStyle(
                    color: spPrimaryColor,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {
                    Navigator.pop(context);
                  },
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: spBackgroundColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Login',
        style: TextStyle(
          color: spPrimaryTextColor,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: spPrimaryTextColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}