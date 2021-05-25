import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Product_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 100,
      "price": 60,
      "size": 'L',
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 100,
      "price": 60,
      "size": 'L',
      "color": "Black",
      "quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Product_on_the_cart.length,
        itemBuilder: (context, index) {
          return Singlr_cart_product(
            cart_prod_name: Product_on_the_cart[index]["name"],
            cart_prod_color: Product_on_the_cart[index]["color"],
            cart_prod_size: Product_on_the_cart[index]["size"],
            cart_prod_price: Product_on_the_cart[index]["price"],
            cart_prod_picture: Product_on_the_cart[index]["picture"],
          );
        });
  }
}

class Singlr_cart_product extends StatefulWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;

  Singlr_cart_product({
    this.cart_prod_name,
    this.cart_prod_color,
    this.cart_prod_price,
    this.cart_prod_picture,
    this.cart_prod_size,
  });

  @override
  _Singlr_cart_productState createState() => _Singlr_cart_productState();
}

class _Singlr_cart_productState extends State<Singlr_cart_product> {
  int cart_prod_qty = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:
            new Image.asset(widget.cart_prod_picture, width: 80, height: 80),
        title: new Text(widget.cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(widget.cart_prod_size,
                      style: TextStyle(color: Colors.red)),
                ),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8),
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(widget.cart_prod_color,
                      style: TextStyle(color: Colors.red)),
                ),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  new Text("Rs ${widget.cart_prod_price}",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  new Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                      ),
                      new IconButton(
                          icon: Icon(Icons.arrow_drop_up),
                          onPressed: () {
                            setState(() {
                              cart_prod_qty += 1;
                            });
                          }),
                      new Text("$cart_prod_qty"),
                      new IconButton(
                          icon: Icon(Icons.arrow_drop_down),
                          onPressed: () {
                            setState(() {
                              if (cart_prod_qty > 1) cart_prod_qty -= 1;
                            });
                          })
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
