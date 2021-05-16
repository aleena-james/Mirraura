import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Text(
        'Welcome back!',
        style: TextStyle(
          color: spPrimaryTextColor,
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
