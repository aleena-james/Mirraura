import 'package:flutter/material.dart';
import 'splash.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //remove debug banner
    home: SplashScreen()));
}
