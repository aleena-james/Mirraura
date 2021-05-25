import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/pages/bookmark.dart';

class ProfilePage extends StatelessWidget {
  late String curemail;
  ProfilePage(this.curemail);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Profile"),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: spPrimaryColor),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 130, top: 20, bottom: 60),
            ),
            new CircleAvatar(
              maxRadius: 70,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 50,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                child: Text(curemail,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0,
                        color: spPrimaryColor)),
              ),
            ),
            Divider(),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: InkWell(
                        onTap: () {},
                        child: Card(
                          color: spPrimaryColor,
                          shadowColor: Colors.grey,
                          child: ListTile(
                            title: Text("Shopping address",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.0,
                                    fontFamily: 'Julius Sans One',
                                    color: Colors.white)),
                            leading: Icon(
                              Icons.location_city,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => new BookmarkPage()));
                        },
                        child: Card(
                          color: spPrimaryColor,
                          shadowColor: Colors.grey,
                          child: ListTile(
                            title: Text(
                              "Bookmarked",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20.0,
                                  fontFamily: 'Julius Sans One',
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.bookmark_outline,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: InkWell(
                        onTap: () {},
                        child: Card(
                          color: spPrimaryColor,
                          shadowColor: Colors.grey,
                          child: ListTile(
                            title: Text(
                              "Orders",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20.0,
                                  fontFamily: 'Julius Sans One',
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.shopping_bag,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ),
                  //                SizedBox(
                  //   height: 15.0,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: InkWell(
                        onTap: () {},
                        child: Card(
                          color: spPrimaryColor,
                          shadowColor: Colors.grey,
                          child: ListTile(
                            title: Text(
                              "Cards",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20.0,
                                  fontFamily: 'Julius Sans One',
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.credit_card,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
