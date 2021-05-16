import 'packages:flutter/material.dart';

 class SigninButton extends StatelessWidget{
           const SigninButton({Key key,}): super(key:key);
         
         @ovrride
         Widget buildAppBar(BuildContext context){
         return Container(
           padding: const EdgeInsets.symmetric(
             horizontal:30,
           ),
           child: FlatButton(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.cicular(36),

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
         } }
        