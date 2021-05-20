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
        backgroundColor: spPrimaryColor,
        title: Text("Bookmarked Items"),
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
      body:new Cart_products(),
    );
  }
}