import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/screen/signin/widget/intput_text_field.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({
    Key? key,
  }) : super(key: key);
  @override
  Widget buildAppBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        children: <Widget>[
          InputTextFeild(label: 'Name', onChange: (value) {}),
          SizedBox(
            height: 16,
          ),
          InputTextFeild(label: 'Email', onChange: (value) {}),
          SizedBox(
            height: 16,
          ),
          InputTextFeild(
              label: 'Password', password: true, onChange: (value) {}),
        ],
      ),
    );
  }
}
