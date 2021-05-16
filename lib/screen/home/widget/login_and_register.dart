import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/screen/login/login_screen.dart';
import 'package:mirraura/screen/signin/signin_screen.dart';

class LoginandRegister extends StatelessWidget {
  const LoginandRegister({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                  color: spPrimaryColor,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SigninScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                      side: BorderSide(color: spPrimaryColor)),
                  color: spPrimaryColor,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: spPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
