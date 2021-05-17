import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextButton(
        style:TextButton.styleFrom(
    backgroundColor: spPrimaryColor,
        ),
        onPressed: () {},
        child: Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(vertical: 16),
    alignment: Alignment.center,
    child: Text(
      'Login',
      style: TextStyle(
        color: Colors.white,
      ),
    ),
        ),
      ),
    );
  }
}
