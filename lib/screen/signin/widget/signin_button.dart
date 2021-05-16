import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';
 class SigninButton extends StatelessWidget{
           const SigninButton({Key? key,}): super(key:key);
         
         @override
         Widget buildAppBar(BuildContext context){
         return Container(
           padding: const EdgeInsets.symmetric(
             horizontal:30,
           ),
           child: FlatButton(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(36),

             ),
             color: spPrimaryColor,
             onPressed: ,
             child:Container(
               width: double.infinity,
               padding: cont EdgeInsets.symmetric(
                 vertical: 16,
               ),
               alignment: Alignment.center,
               child: Text('Sign in',
               style: Textstyle(
                color: Colors.white,
               ),),
             ),
           ),
         );
         }

  Textstyle({Color color}) {} }
        