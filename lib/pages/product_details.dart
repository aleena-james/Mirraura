import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/pages/filter.dart';

enum SetSize { s, m, l }
enum SetColor { r, b, y }

class PageDetails extends StatefulWidget {
  final productDetailName;
  final productDetailNewPrice;
  final productDetailPrice;
  final productDetailPic;

  PageDetails(
      {this.productDetailName,
      this.productDetailNewPrice,
      this.productDetailPrice,
      this.productDetailPic});

  @override
  _PageDetailsState createState() => _PageDetailsState();
}

class _PageDetailsState extends State<PageDetails> {
  SetSize? _size = SetSize.s;
  SetColor? _color = SetColor.y;

  String s = "S";
  String c = "Yellow";
  bool fill = false;
  @override
  Widget build(BuildContext context) {
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
            decoration: InputDecoration(
                icon: Icon(Icons.search), border: InputBorder.none),
          ),
        ),
      ),
      body: new ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: spBackgroundColor,
                child: Image.asset(widget.productDetailPic),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.productDetailName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontFamily: 'Julius Sans One',
                        color: spPrimaryColor),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Rs ${widget.productDetailPrice}",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            fontFamily: 'Julius Sans One',
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Rs ${widget.productDetailNewPrice}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            fontFamily: 'Julius Sans One',
                            color: Colors.pink,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text(
                              "Size",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                fontFamily: 'Julius Sans One',
                              ),
                            ),
                            content: Text(
                              "Choose the size",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                fontFamily: 'Julius Sans One',
                              ),
                            ),
                            actions: [
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Radio(
                                    value: SetSize.s,
                                    groupValue: _size,
                                    onChanged: (SetSize? value) {
                                      setState(() {
                                        _size = value;
                                        s = "S";
                                      });
                                    },
                                  ),
                                  new Text(
                                    'S',
                                    style: new TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Julius Sans One'),
                                  ),
                                  new Radio(
                                      value: SetSize.m,
                                      groupValue: _size,
                                      onChanged: (SetSize? value) {
                                        setState(() {
                                          _size = value;
                                          s = "M";
                                        });
                                      }),
                                  new Text(
                                    'M',
                                    style: new TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Julius Sans One'),
                                  ),
                                  new Radio(
                                    value: SetSize.l,
                                    groupValue: _size,
                                    onChanged: (SetSize? value) {
                                      setState(() {
                                        _size = value;
                                        s = "L";
                                      });
                                    },
                                  ),
                                  new Text(
                                    'L',
                                    style: new TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Julius Sans One'),
                                  ),
                                ],
                              ),
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  "Close",
                                  style: new TextStyle(
                                      fontFamily: 'Julius Sans One'),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  color: spBackgroundColor,
                  elevation: 0.2,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose a color"),
                            actions: [
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Radio(
                                    value: SetColor.y,
                                    groupValue: _color,
                                    onChanged: (SetColor? value) {
                                      setState(() {
                                        _color = value;
                                        c = "Yellow";
                                      });
                                    },
                                  ),
                                  new Text(
                                    'Yellow',
                                    style: new TextStyle(fontSize: 16.0),
                                  ),
                                  new Radio(
                                      value: SetColor.r,
                                      groupValue: _color,
                                      onChanged: (SetColor? value) {
                                        setState(() {
                                          _color = value;
                                          c = "Red";
                                        });
                                      }),
                                  new Text(
                                    'Red',
                                    style: new TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  new Radio(
                                    value: SetColor.b,
                                    groupValue: _color,
                                    onChanged: (SetColor? value) {
                                      setState(() {
                                        _color = value;
                                        c = "Blue";
                                      });
                                    },
                                  ),
                                  new Text(
                                    'Blue',
                                    style: new TextStyle(fontSize: 16.0),
                                  ),
                                ],
                              ),
                              MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    "close",
                                  )),
                            ],
                          );
                        });
                  },
                  color: spBackgroundColor,
                  elevation: 0.2,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: spPrimaryColor,
                  elevation: 0.2,
                  textColor: spBackgroundColor,
                  child: Text("Buy now"),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                color: spPrimaryColor,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return new AlertDialog(
                        content: Text("Added to cart.."),
                        actions: [
                          MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                "ok",
                              )),
                        ],
                      );
                    },
                  );
                },
              ),
              IconButton(
                icon: GestureDetector(
                  child: (fill)
                      ? Icon(
                          Icons.bookmark,
                          color: spPrimaryColor,
                        )
                      : Icon(Icons.bookmark_border, color: spPrimaryColor),
                ),
                color: spPrimaryColor,
                onPressed: () {
                  setState(() {
                    fill = !fill;
                  });
                  if (fill) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          content: Text("Bookmarked.."),
                          actions: [
                            MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  "ok",
                                )),
                          ],
                        );
                      },
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          content: Text("Bookmark removed.."),
                          actions: [
                            MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  "ok",
                                )),
                          ],
                        );
                      },
                    );
                  }
                },
              )
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product details",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontFamily: 'Julius Sans One',
                    fontWeight: FontWeight.bold)),
            subtitle: Text(
                "Lorem Ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("Product name",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Julius Sans One',
                          fontWeight: FontWeight.bold))),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  widget.productDetailName,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("Size",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Julius Sans One',
                          fontWeight: FontWeight.bold))),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  s,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("Color",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Julius Sans One',
                          fontWeight: FontWeight.bold))),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  c,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("Product brand",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Julius Sans One',
                          fontWeight: FontWeight.bold))),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Brand X",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text("Product condition",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Julius Sans One',
                          fontWeight: FontWeight.bold))),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Brand new!!",
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              child: new Text(
                "Filter here..",
                style: TextStyle(color: Colors.white),
              ),
              color: spPrimaryColor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new FilterPage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
