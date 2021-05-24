import 'package:flutter/material.dart';
import 'package:mirraura/components/horizontal_listview.dart';
import 'package:mirraura/components/products.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/pages/cart.dart';

class TShirt extends StatelessWidget {
 
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
            Text('Shirt',style: TextStyle(fontSize: 50,),),
            SizedBox(
              height: 500,
              child:_Shirt(),),
        ],),
    );
  }
}

class _Shirt extends StatelessWidget {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 100,
      "price": 60,
    },
     {
      "name": " Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 100,
      "price": 70,
    },
    {
       "name": "Shirt",
      "picture": "images/products/shirt.jpg",
      "old_price": 100,
      "price": 70,
    },
    {
      "name": " Shirt",
      "picture": "images/products/shirt1.jpg",
      "old_price": 70,
      "price": 40,
    },];
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
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

  
