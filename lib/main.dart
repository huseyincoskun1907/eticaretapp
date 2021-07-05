import 'dart:js';

import 'package:eticaretapp/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth=MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
Widget buildBaslik(){
  return
    Padding(
      padding: const EdgeInsets.all(24.0),
      child: Text(
        "Home",
        style: TextStyle(
          fontSize: 32,
          color: Color(0xFF0A1034),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
}

Widget buildBanner(){
  return
    Padding(
      padding: EdgeInsets.only(top: 24),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 24,right: 36,top: 14,bottom: 18),
        decoration: BoxDecoration(color: Color(0xff0001fc),borderRadius:BorderRadius.circular(6) ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bose Home Speaker",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 4,),
                Text("USD 279",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),
                ),

              ],
            ),
            Image.asset("assets/images/indir.jfif"),
          ],
        ),
      ),
    );

}
Widget buildNavigation({BuildContext context,@required String text,@required IconData icon,Widget widget}){
  return  GestureDetector(
    onTap: (){
      Navigator.push(context,MaterialPageRoute(builder:(context){
     return  widget;
      }));
    },
    child: Column(
      children: [

        Container(
          padding:EdgeInsets.symmetric(horizontal: 19,vertical: 22),

          decoration: BoxDecoration(shape: BoxShape.circle),
          color: Color(0xFFE0CF8),
          child:Icon(icon,color: Color(0xFF001FC),size: 18,),
        ),
        SizedBox(height: 8),
        Text(text,style: TextStyle(
          color: Color(0xFF1F53E4),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),

        ),
      ],
    ),
  );

}
Widget buildSalesItems({@required String text,@required String photourl,@required String discount,@required double screenwigth}){
  return  Container(
    padding: EdgeInsets.only(left: 12,top: 12,bottom: 21,right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //%50

        Container(
          width: (screenwigth - 60)*0.5,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),
              color: Color(0xFFE0ECF8)),
          child: Text(discount,style: TextStyle(color: Color(0xFF1F53E4),fontSize: 12),),
        ),

        SizedBox(height: 22),
        //Telefon Resmi

        Center(child: Image.asset(photourl)),

        SizedBox(height: 22),
        Text(text,style: TextStyle(fontSize: 18,color: Color(0xFF0A1034)),),
        SizedBox(height: 16),
        //ismi




      ],),
  );

}

