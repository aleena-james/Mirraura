import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:toast/toast.dart';

import '../constant.dart';

class View extends StatefulWidget {
  //EmailProvider emailProvider;

  // CheckoutView(this.emailProvider);
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  late Razorpay razorpay;
  TextEditingController textEditingController = new TextEditingController();
  @override
  void initState() {
    super.initState();
    razorpay = new Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    razorpay.clear();
  }

  void opencheckout() {
    var options = {
      "key": "rzp_test_swTwpowVK9wzFJ",
      //OLtBt2n9PUpWCQecdm1Hjx4y
      "amount": 2200 * 100,
      "name": "MIRRAURA",
      "description": "Reflect your Value",
      //"email": num.parse(textEditingController.text) * 100,
      //"number": num.parse(textEditingController.text) * 100,
      "prefill": {"contact": "2323232323", "email": "shdjsdh@gmail.com"},
      "external": {
        "wallets": ["paytm"]
      }
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void _handlePaymentSuccess() {
    print("payment success");
    Toast.show("Payment success", context);
  }

  void _handlePaymentError() {
    print("payment Error");
    Toast.show("Payment error", context);
  }

  void _handleExternalWallet() {
    print("External Wallet");
    Toast.show("External Wallet", context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: spPrimaryColor,
        title: Text("Razor Pay"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(hintText: "PRESS PAY NOW"),
            ),
            SizedBox(
              height: 12,
            ),
            //TextField(
            //controller: textEditingController,
            //decoration: InputDecoration(hintText: "phone number"),
            //),
            RaisedButton(
              color: Colors.pinkAccent,
              child: Text(
                "pay Now",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                opencheckout();
              },
            )
          ],
        ),
      ),
    );
  }
}
