import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart' show Carousel;
import 'package:mirraura/components/horizontal_listview.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/pages/cart.dart';
import 'package:mirraura/components/products.dart';
import 'package:mirraura/pages/bookmark.dart';
import 'package:mirraura/pages/profile.dart';
import 'package:mirraura/pages/setting.dart';

class HomePage extends StatefulWidget {
  late String curemail;
  HomePage(this.curemail);
  @override
  _HomePageState createState() => _HomePageState(curemail);
}

class _HomePageState extends State<HomePage> {
  late String curemail;
  _HomePageState(this.curemail);
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget imagecarosel = new Container(
      padding: const EdgeInsets.only(top: 0.5),
      height: 250.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/background2.jpg'),
          AssetImage('images/sale.jpg'),
          AssetImage('images/sales.png'),
          AssetImage('images/jon.jpg'),
          AssetImage('images/m1.jpg'),
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
        iconTheme: IconThemeData(color: spPrimaryColor),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey[100],
          elevation: 0.0,
          child: TextFormField(
            //controller: _searchController,
            decoration: InputDecoration(
                icon: Icon(Icons.search),
                // contentPadding: const EdgeInsets.all(10.0),
                // hintText: "Search...",
                border: InputBorder.none),
          ),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: spPrimaryColor,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => new Cart()));
            },
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text(''),
              accountEmail: Text(curemail),
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
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new ProfilePage(curemail)));
              },
              child: ListTile(
                title: Text('Profile'),
                leading: Icon(
                  Icons.person,
                  color: spPrimaryColor,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_bag,
                  color: spPrimaryColor,
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
                  color: spPrimaryColor,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new BookmarkPage()));
              },
              child: ListTile(
                title: Text('Bookmark'),
                leading: Icon(
                  Icons.bookmark,
                  color: spPrimaryColor,
                ),
              ),
            ),

            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new SettingPage(curemail)));
              },
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
      body: new Column(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),
          HorizontalList(),
          imagecarosel,
          new Padding(
            padding: const EdgeInsets.all(23.0),
            child: new Text('New Arrivals'),
          ),
          Flexible(child: Products()),
        ],
      ),
    );
  }
}
