import 'package:flutter/material.dart';

class CheckoutView extends StatefulWidget {
  //EmailProvider emailProvider;
  CheckoutView();
  // CheckoutView(this.emailProvider);
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
          //  new Cart_products(),
          Container(),
        ],
      ),
    );
  }
}
