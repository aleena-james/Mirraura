import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'home.dart';
import 'signup.dart';
import 'package:mirraura/constant.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = FirebaseAuth.instance;
  bool showProgress = false;
  late String email, password;
  Future<String> logIn() async{
    String user= (await _auth.signInWithEmailAndPassword(email: email.trim(), password: password).toString());
    return user;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color:spPrimaryColor),
        
        
            
          ),
        
      
      body: Center(
        child: ModalProgressHUD(
          inAsyncCall: showProgress,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome Back",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    fontFamily: 'Julius Sans One'),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value; // get value from TextField
                },
                
                decoration: InputDecoration(
                    hintText: "Enter your Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)))),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value; //get value from textField
                },
                decoration: InputDecoration(
                    hintText: "Enter your Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)))),
              ),
              SizedBox(
                height: 20.0,
              ),
              Material(
                elevation: 5,
                color: spSecondTextColor,
                borderRadius: BorderRadius.circular(32.0),
                child: MaterialButton(
                  onPressed: () async {
                    setState(() {
                      showProgress = true;
                    });
                    try {
                      final newUser = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      print(newUser.toString());
                      if (newUser != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage(email)),
                        );
                        Fluttertoast.showToast(
                            msg: "Login Successfull",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: spPrimaryColor,
                            textColor: Colors.white,
                            fontSize: 16.0);
                        setState(() {
                          showProgress = false;
                        });
                      }
                    } catch (e) {
                     
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));

                      Fluttertoast.showToast(
                          msg: "Make sure this email and password is correct",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 3,
                          backgroundColor: spPrimaryColor,
                          textColor: Colors.white,
                          fontSize: 16.0,
                          );
                    }
                  },
                  minWidth: 200.0,
                  height: 45.0,
                  child: Text(
                    "Login",
                    style:
                         TextStyle(fontWeight: FontWeight.w600, fontSize: 25.0,fontFamily: 'Julius Sans One'),
                  ),
                ),
              ),
               SizedBox(
                height: 15.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                child: Text(
                  "Don't have an account? Sign up Now",
                  style: TextStyle(
                      color: spPrimaryColor, fontWeight: FontWeight.w900, fontFamily: 'Julius Sans One'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
