import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/pages/cart.dart';


class PageDetails extends StatefulWidget {
  final productDetailName;
  final productDetailNewPrice;
  final productDetailPrice;
  final productDetailPic;
  
  PageDetails({this.productDetailName,
  this.productDetailNewPrice, this.productDetailPrice, this.productDetailPic});
  
  @override
  _PageDetailsState createState() => _PageDetailsState();
}

class _PageDetailsState extends State<PageDetails> {
  @override
  Widget build(BuildContext context) {
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
      body: new ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child:Container(
                color: spBackgroundColor,
                child: Image.asset(widget.productDetailPic),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.productDetailName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,),),
                  title: Row(children: [
                    Expanded(
                      child: Text("Rs ${widget.productDetailPrice}",
                      style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,),),
                    ),
                    Expanded(
                      child: Text("Rs ${widget.productDetailNewPrice}",
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Colors.pink,),),
                    ),
                  ],),
                ),
              ),),
          ),

          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed:() {
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: Text("Size"),
                        content: Text("Choose the size"),
                        actions: [
                          MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: Text("close",)), 
                        ],
                      );
                    });
                  },
                  color: spBackgroundColor,
                  elevation: 0.2,
                  textColor: Colors.grey,
                  child: Row(children: [
                     Expanded(child: Text("Size"),),
                      Expanded(child: Icon(Icons.arrow_drop_down),),],
                       ),
                ),
                      ),

                  Expanded(
                  child: MaterialButton(
                  onPressed:() {
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: Text("Color"),
                        content: Text("Choose a color"),
                        actions: [
                          MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: Text("close",)), 
                        ],
                      );
                    });
                  },
                  color: spBackgroundColor,
                  elevation: 0.2,
                  textColor: Colors.grey,
                  child: Row(children: [
                     Expanded(child: Text("Color"),),
                      Expanded(child: Icon(Icons.arrow_drop_down),),],
                  ),
                ),
                      ),

                  Expanded(
                  child: MaterialButton(
                  onPressed:() {
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: Text("Quantity"),
                        content: Text("Choose the quantity"),
                        actions: [
                          MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: Text("close",)), 
                        ],
                      );
                    });
                  },
                  color: spBackgroundColor,
                  elevation: 0.2,
                  textColor: Colors.grey,
                  child: Row(children: [
                     Expanded(child: Text("Qty"),),
                      Expanded(child: Icon(Icons.arrow_drop_down),),
                  ],),),),
            ],
          ),
           Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed:() {},
                  color: Colors.red,
                  elevation: 0.2,
                  textColor: spBackgroundColor,
                  child: Text("Buy now"),
                       ),
                ),
                
                IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.red,
                  onPressed: () {}, ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                  onPressed: () {}, )
                ],
                      ),
              Divider(),
              ListTile(
                title: Text("Product details"),
                subtitle: Text("Lorem Ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
              ),
        Divider(),
        Row(
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
            child: Text("Product name", style: TextStyle(color: Colors.grey,) )),
            Padding(padding: const EdgeInsets.all(5.0),
            child: Text(widget.productDetailName,),),
          ],
        ),
//to be completed...
         Row(
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
            child: Text("Product brand", style: TextStyle(color: Colors.grey,) )),
             Padding(padding: const EdgeInsets.all(5.0),
            child: Text("Brand X",),),
          ],
        ),

//to be completed...
         Row(
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
            child: Text("Product condition", style: TextStyle(color: Colors.grey,) )),
             Padding(padding: const EdgeInsets.all(5.0),
            child: Text("Brand new!!",),),
          ],
        ),
        ],
      ),
    );
  }
}