import 'package:flutter/material.dart';
import 'package:mirraura/constant.dart';
import 'package:mirraura/screen/signin/widget/welcome.dart';
import 'package:mirraura/screen/signin/widget/sigin_form.dart';
import 'package:mirraura/screen/signin/widget/sigin_button.dart';


class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(content),
      body: Column(
         padding: const EdgeInsets.symmetric(
          horizontal: 30, vertical: 20,
        ),
        children: <Widget> [
         Welcome(),
         SigninForm(),
         SizedBox(height: 60,),
         SigninButton(),
        
          
          ],
      ),
     );
  }
        
        
       
      AppBar buildAppBar(BuildContext content){
       return AppBar(
        title: Text('Sign', 
                   style: TextStyle(
                             color: spPrimaryTextColor,
                            ),),
        backgroundColor: spBackgroundColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icon.arrow_back_ios,
          color: spPrimaryTextColor,
          ),
          onPressed: (){ 
            Navigator.pop(context);},),
      );
    
  }
}
