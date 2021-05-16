import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/screen/signin/widget/welcome.dart';
import 'package:mirraura/screen/signin/widget/signin_form.dart';
import 'package:mirraura/screen/signin/widget/signin_button.dart';

class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        children: <Widget>[
          Welcome(),
          SigninForm(),
          SizedBox(
            height: 60,
          ),
          SigninButton(),
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
        'Sign up',
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
