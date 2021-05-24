import 'package:flutter/material.dart';
import 'package:mirraura/components/horizontal_listview.dart';
import 'package:mirraura/components/products.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/pages/cart.dart';

class Kids extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: spPrimaryColor,
        title: Text("  Category:"),
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
       body: ListView(children: [
          HorizontalList(),
           Padding(padding: const EdgeInsets.only(top:8.0, left: 20.0,)),
            Text('Kids',style: TextStyle(fontSize: 50,),),
            SizedBox(
              height: 500,
              child:_Kids(),),
        ],),
    );
  }
}

class _Kids extends StatelessWidget {
  var product_list=[
     {
      "name": " skirt  ",
      "picture": "images/products/skt3.jpg",
      "old_price": 100,
      "price": 90,
    },
     {
      "name": " skirt  ",
      "picture": "images/products/skt5.jpg",
      "old_price": 100,
      "price": 70,
    },
    {
      "name": " Skirt",
      "picture": "images/products/skt6.jpg",
      "old_price": 100,
      "price": 90,
    },
    {
      "name": " Skirt",
      "picture": "images/products/skt7.jpg",
      "old_price": 100,
      "price": 70,
    },
    {
      "name": "Kids Wear",
      "picture": "images/products/boy.jpg",
      "old_price": 100,
      "price": 70,
    },
    {
      "name": "Kids Wear",
      "picture": "images/products/boy1.jpg",
      "old_price": 100,
      "price": 60,
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
          }
    );
  }
}