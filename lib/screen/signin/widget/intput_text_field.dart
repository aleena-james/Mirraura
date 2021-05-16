import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';

class InputTextFeild extends StatelessWidget {
   const InputTextFeild({Key? key, required this.label,required this.onChange,this.password=false,}) : super(key: key);
   final String label;
   final Function onChange;
   final bool password;
               @override
               Widget buildAppBar(BuildContext context){
               return TextField(
                 obscureText: password,
                 onChanged: onChange(),
                 cursorColor: Colors.grey,
                 decoration: InputDecoration(
                   labelText: label,
                   labelStyle: TextStyle(color: Colors.grey,),
                   border: UnderlineInputBorder(
                     borderSide: BorderSide(
                       color: spPrimaryColor,
                       width:2,
                     ),
                   ),
                   focusedBorder:  UnderlineInputBorder(
                     borderSide: BorderSide(
                       color: spPrimaryColor,
                       width:2,
                     ),
                   ),
                   enabledBorder:  UnderlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.grey,
                       width:0.5,
                     ),
                   ),
                 ),
               );
            
          
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }}
