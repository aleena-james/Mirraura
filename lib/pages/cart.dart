import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/components/cart_products.dart';
import 'package:mirraura/pages/view.dart';

import 'checkout.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: spPrimaryColor,
        title: Text("My Cart"),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: new Cart_products(),
      bottomNavigationBar: new Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  title: new Text("Total:"),
                  subtitle: new Text("\Rs 1020"),
                ),
              ),
              Expanded(
                child: new MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CheckoutView()),
                    );
                  },
                ),
              ),
              Material(
                  elevation: 5,
                  color: spPrimaryColor,
                  borderRadius: BorderRadius.circular(28.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => new View()));
                    },
                    minWidth: 200.0,
                    height: 45.0,
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20.0),
                    ),
                  ))
            ],
          )),
    );
  }
}

checkout() {}
