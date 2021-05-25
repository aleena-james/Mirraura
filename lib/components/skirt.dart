import 'package:flutter/material.dart';
import 'package:mirraura/components/horizontal_listview.dart';
import 'package:mirraura/components/products.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/pages/cart.dart';

class Skirt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: spPrimaryColor,
        title: Text(
          "Category",
          style: TextStyle(
              fontFamily: 'Julius Sans One', fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => new Cart()));
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          HorizontalList(),
          Padding(
              padding: const EdgeInsets.only(
            top: 8.0,
            left: 20.0,
          )),
          Text(
            'Skirts',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              letterSpacing: 2,
              fontFamily: 'Julius Sans One',
            ),
          ),
          SizedBox(
            height: 500,
            child: _Skirt(),
          ),
        ],
      ),
    );
  }
}

class _Skirt extends StatelessWidget {
  var product_list = [
    {
      "name": "Blue skirt  ",
      "picture": "images/products/skt1.jpeg",
      "old_price": 80,
      "price": 40,
    },
    {
      "name": "Pink Skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 80,
      "price": 50,
    },
    {
      "name": " skirt  ",
      "picture": "images/products/skt2.2.jpg",
      "old_price": 100,
      "price": 80,
    },
    {
      "name": " Skirt",
      "picture": "images/products/skt4.jpg",
      "old_price": 100,
      "price": 90,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}
