import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imagelocation: 'images/cats/tshirt.png',
            imagecaption: 'Shirt',
          ),
          Category(
            imagelocation: 'images/cats/dress.png',
            imagecaption: 'Dress',
          ),
          Category(
            imagelocation: 'images/cats/jeans.png',
            imagecaption: 'Jeans',
          ),
          Category(
            imagelocation: 'images/cats/skirt.png',
            imagecaption: 'Skirt',
          ),
          Category(
            imagelocation: 'images/cats/shoe1.png',
            imagecaption: 'Shoe',
          ),
          Category(
            imagelocation: 'images/cats/heel1.png',
            imagecaption: 'Heels',
          ),
          Category(
            imagelocation: 'images/cats/formal.png',
            imagecaption: 'Kids',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imagelocation;

  final String imagecaption;

  Category({required this.imagelocation, required this.imagecaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
              title: Image.asset(
                imagelocation,
                width: 40.0,
                height: 40.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  imagecaption,
                  style: new TextStyle(fontSize: 15.0),
                ),
              )),
        ),
      ),
    );
  }
}
