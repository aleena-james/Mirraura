import 'package:flutter/material.dart';

class CheckoutView extends StatefulWidget {
  CheckoutView();
  @override
  _CheckoutViewState createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
      ),
      body: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}
