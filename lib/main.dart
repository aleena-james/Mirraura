import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart' show Carousel;
import 'package:mirraura/components/horizontal_listview.dart';
import 'constant.dart';
import 'package:mirraura/pages/cart.dart';
import 'package:mirraura/components/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //remove debug banner
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imagecarosel = new Container(
      padding: const EdgeInsets.only(top: 0.5),
      height: 250.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/background2.jpg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 500),
        dotSize: 2.0,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: spPrimaryColor,
        title: Text("Mirraura"),
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
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text('Lekha'),
              accountEmail: Text('lekha123@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: spPrimaryColor,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Profile'),
                leading: Icon(
                  Icons.person,
                  color: Colors.orange,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.home,
                  color: Colors.orange,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_bag,
                  color: Colors.orange,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('My Cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.orange,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.orange,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.black),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),
          HorizontalList(),

          imagecarosel,
          //padding widget

          //Horizontal list view begins here

          new Padding(
            padding: const EdgeInsets.all(23.0),
            child: new Text('New Arrivals'),
          ),
          Container(
            height: 320,
            child: Products(),
          )
        ],
      ),
    );
  }
}
