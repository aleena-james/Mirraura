import 'package:flutter/material.dart';
import 'package:mirraura/components/dress.dart';
import 'package:mirraura/components/heels.dart';
import 'package:mirraura/components/jeans.dart';
import 'package:mirraura/components/kids.dart';
import 'package:mirraura/components/shoes.dart';
import 'package:mirraura/components/skirt.dart';
import 'package:mirraura/components/tshirt.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/pages/cart.dart';

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
            navigate: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new TShirt()),);},
          ),
          Category(
            imagelocation: 'images/cats/dress.png',
            imagecaption: 'Dress',
            navigate: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new Dress()),);},
          ),
          Category(
            imagelocation: 'images/cats/jeans.png',
            imagecaption: 'Jeans',
            navigate: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new Jeans()),);},
          ),
          Category(
            imagelocation: 'images/cats/skirt.png',
            imagecaption: 'Skirt',
            navigate: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new Skirt()),);},
          ),
          Category(
            imagelocation: 'images/cats/shoe1.png',
            imagecaption: 'Shoe',
            navigate: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new Shoes()),);},
          ),
          Category(
            imagelocation: 'images/cats/heel1.png',
            imagecaption: 'Heels',
            navigate: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new Heels()),);},
          ),
          Category(
            imagelocation: 'images/cats/formal.png',
            imagecaption: 'Kids',
            navigate: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new Kids()),);},
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;
  final Function navigate;

  Category({required this.imagelocation, required this.imagecaption, required this.navigate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {navigate();},
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

