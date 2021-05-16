import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';

class Welcome extends StatelessWidget{
           const Welcome({Key? key,}): super(key:key);
          @override
         Widget buildAppBar(BuildContext context){
         return Container(
          child: Text('Welcome',
          style: TextStyle(
            color: spPrimaryTextColor,
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),),
          );
       
      }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
         }
