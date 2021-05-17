import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';
 class SigninButton extends StatelessWidget{
           const SigninButton({Key? key,}): super(key:key);
         
         @override
         Widget build(BuildContext context){
         return Container(
           padding: const EdgeInsets.symmetric(
             horizontal:30,
           ),
           child: TextButton(
             style: TextButton.styleFrom(
               backgroundColor: spPrimaryColor, ),
             onPressed: () {},
             child:Container(
               width: double.infinity,
               padding: const EdgeInsets.symmetric(
                 vertical: 16,
               ),
               alignment: Alignment.center,
               child: Text('Sign in',
               style: TextStyle(
                color: Colors.white,
               ),),
             ),
           ),
         );
         }
}
        
