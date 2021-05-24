import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../constant.dart';
import 'package:mirraura/pages/login.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
 final _auth = FirebaseAuth.instance;
  bool showProgress = false;
  late String email, password;
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
                "New User",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20.0,
                    fontFamily: 'Julius Sans One'),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value; //get the value entered by user.
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
                  password = value; //get the value entered by user.
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
                      final newuser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      if (newuser != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()),
                        );
                        setState(() {
                          showProgress = false;
                        });
                      }
                    } catch (e) {
                      
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Signup()));
                      
                      Fluttertoast.showToast(
                            msg: "Make sure the format of email and password is correct and this account doesn't already exists",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 3,
                            backgroundColor:spPrimaryColor ,
                            textColor: Colors.white,
                            fontSize: 16.0);
                    }
                  },
                  minWidth: 200.0,
                  height: 45.0,
                  child: Text(
                    "Sign Up",
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
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  "Already Registred? Login Now",
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