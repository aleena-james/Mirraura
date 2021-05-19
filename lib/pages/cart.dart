import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/components/cart_products.dart';

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
        child: Row(children: <Widget>[
          Expanded(child: ListTile(
            title: new Text("Total:"),
            subtitle: new Text("\Rs 1020"),


          ),),
          Expanded(
            child: new MaterialButton(onPressed: () {},
            child: new Text("Check out", style: TextStyle(color: Colors.white),),
            color: spPrimaryColor, 
          ),)
        ],)
      ),
    );
  }
}