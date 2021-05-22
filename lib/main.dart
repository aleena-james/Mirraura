import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mirraura/pages/view.dart';
import 'splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, //remove debug banner
      home: SplashScreen()));
  View();
}
