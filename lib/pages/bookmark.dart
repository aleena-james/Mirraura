import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mirraura/components/cart_products.dart';
import 'package:mirraura/constant.dart';

class BookmarkPage extends StatefulWidget {
  @override
  _BookmarkPageState createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(color: spPrimaryColor),
        backgroundColor: Colors.white,
        title: Text(
          "Bookmarked Items",
          style: TextStyle(
            color: spPrimaryColor,
          ),
        ),
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
    );
  }
}
