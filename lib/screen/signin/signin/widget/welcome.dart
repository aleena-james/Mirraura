import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 30, vertical: 20),
    child: Text('Welcome',
    style: TextStyle(
      color: spPrimaryTextColor,
      fontSize: 32,
      fontWeight: FontWeight.w500,
    ),),
    );
  }
}
  