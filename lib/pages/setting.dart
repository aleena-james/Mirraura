import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/pages/bookmark.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mirraura/pages/welcome.dart';

class SettingPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String curemail;
  SettingPage(this.curemail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Settings"),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: spPrimaryColor),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 130, top: 20, bottom: 60),
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
                            title: Text("Manage Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.0,
                                    fontFamily: 'Julius Sans One',
                                    color: Colors.white)),
                            leading: Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: InkWell(
                        onTap: () {
                          Fluttertoast.showToast(
                              msg: "Logging Out",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: spPrimaryColor,
                              textColor: Colors.white,
                              fontSize: 16.0);

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => new Welcome()));
                        },
                        child: Card(
                          color: spPrimaryColor,
                          shadowColor: Colors.grey,
                          child: ListTile(
                            title: Text(
                              "Logout",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20.0,
                                  fontFamily: 'Julius Sans One',
                                  color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.logout,
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
