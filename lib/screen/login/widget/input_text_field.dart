import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';

class InputTextField extends StatelessWidget {
  final String label; 
  final Function onChange;
  final bool password; 
  const InputTextField({
    Key? key, required this.label, required this.onChange, this.password = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange(),
      obscureText: password,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey),
        border: UnderlineInputBorder(
      borderSide: BorderSide(
    color: spPrimaryColor,
    width: 2,
        )),
        focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
    color: spPrimaryColor,
    width: 2,
        )),
        enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
    color: Colors.grey,
    width: 0.5,
        )),
      ),
    );
  }
}
