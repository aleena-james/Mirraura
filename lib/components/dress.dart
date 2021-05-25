import 'package:flutter/material.dart';
import 'package:mirraura/components/horizontal_listview.dart';
import 'package:mirraura/components/products.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/pages/cart.dart';

class Dress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: spPrimaryColor,
        title: Text("Category"),
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
            Text('Dress',style: TextStyle(fontSize: 50,),),
            SizedBox(
              height: 500,
              child:_Dress(),),
        ],),
    );
  }
}

class _Dress extends StatelessWidget {
   var product_list =[
      {
      "name": " Dress",
      "picture": "images/products/dress3.jpg",
      "old_price": 100,
      "price": 40,
    },
     {
      "name": " Dress",
      "picture": "images/products/dress4.jpg",
      "old_price": 100,
      "price": 60,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 60,
    },
    {
      "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
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