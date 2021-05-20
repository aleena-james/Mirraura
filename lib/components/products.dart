import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mirraura/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": " Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Shirt",
      "picture": "images/products/shirt.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": " Shirt",
      "picture": "images/products/shirt1.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": " Dress",
      "picture": "images/products/dress3.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": " Dress",
      "picture": "images/products/dress4.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "jeans",
      "picture": "images/products/jeans1.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "jeans",
      "picture": "images/products/jeans.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Track pant",
      "picture": "images/products/pants1.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Tights",
      "picture": "images/products/pants2.jpeg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Blue skirt  ",
      "picture": "images/products/skt1.jpeg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Pink Skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": " skirt  ",
      "picture": "images/products/skt2.2.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": " skirt  ",
      "picture": "images/products/skt3.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": " Skirt",
      "picture": "images/products/skt4.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": " skirt  ",
      "picture": "images/products/skt5.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": " Skirt",
      "picture": "images/products/skt6.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": " Skirt",
      "picture": "images/products/skt7.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Kids Wear",
      "picture": "images/products/boy.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Kids Wear",
      "picture": "images/products/boy1.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Black Heel",
      "picture": "images/products/hills1.jpeg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Red Heel",
      "picture": "images/products/hills2.jpeg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Ava Heel",
      "picture": "images/products/hills3.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Ava Heel",
      "picture": "images/products/hills4.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Ash Shoe",
      "picture": "images/products/shoe1.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Ash Shoe",
      "picture": "images/products/shoe3.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Ash Shoe",
      "picture": "images/products/shoe2.jpg",
      "old_price": 1209,
      "price": 1100,
    },
    {
      "name": "Ash Shoe",
      "picture": "images/products/shoe4.jpg",
      "old_price": 1209,
      "price": 1100,
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

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_price;
  final prod_old_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PageDetails(
                        productDetailName: prod_name,
                        productDetailNewPrice: prod_price,
                        productDetailPrice: prod_old_price,
                        productDetailPic: prod_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white70,
                      child: new Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              prod_name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          new Text(
                            "Rs ${prod_price}",
                            style: TextStyle(color: Colors.redAccent),
                          )
                        ],
                      )),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
