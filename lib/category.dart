import 'dart:js';

import 'package:eticaretapp/components/bottomnavigation.dart';
import 'package:eticaretapp/components/header.dart';
import 'package:eticaretapp/productdetail.dart';
import 'package:flutter/material.dart';

class CAtegoryPage extends StatelessWidget {

  String categoryTitle;
  CAtegoryPage(this.categoryTitle);

  List<Map> products=[
    {"İsim": "Surfacce Laptop 3","Fotograf":"assets/images/laptop.png","fiyat":"999"},
    {"İsim": "Surfacce Laptop 4","Fotograf":"assets/images/laptop.png","fiyat":"999"},
    {"İsim": "Surfacce Laptop 5","Fotograf":"assets/images/laptop.png","fiyat":"999"},
    {"İsim": "Surfacce Laptop 6","Fotograf":"assets/images/laptop.png","fiyat":"999"},
    {"İsim": "Surfacce Laptop 7","Fotograf":"assets/images/laptop.png","fiyat":"999"},
    {"İsim": "Surfacce Laptop 8","Fotograf":"assets/images/laptop.png","fiyat":"999"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //
            children: [
              //header
              header(categoryTitle, context),
              SizedBox(height: 12),

              //içerikler
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 10,
                children: products.map((Map product) {
               return buildContext(
                   product["isim"],product["fotograf"], product["fiyat"],context);

              }).toList(),),
            )
            ],
          ),
          ),
          //Bottom Navigation
          bottomNavigationBar("search"),
        ],),
      ),
    );
  }
}
buildContext(String title,String photoUrl,String price,context ){
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
return ProductDetail(title);
      }));
    },
    child: Container(
      padding:EdgeInsets.symmetric(horizontal: 12 ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 24,
              offset:Offset(0,16) ),],

      ),
      child:Column(
        children: [
          SizedBox(height:16 ,),
          Image.asset(photoUrl),
          SizedBox(height: 32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,style: TextStyle(color:Color(0xFF0A1034),
                fontSize:16,
                fontWeight: FontWeight.w500,
              ),),
              Text("USD $price",
                style: TextStyle(
                  color:Color(0xFF0001FC),
                fontSize:16,
                fontWeight: FontWeight.w500,
              ),
              ),

            ],
          ),
        ],
      ) ,
    ),
  );

}