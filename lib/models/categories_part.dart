import 'package:flutter/material.dart';
class Categorypart{
  String simplegetText;
  String categoryPrice;
  String iconpath;
  String orderdetails;
  Color? boxColor;

Categorypart({
  required this.simplegetText,
  required this.categoryPrice,
  required this.orderdetails,
  required this.iconpath,
   this.boxColor
});



static List<Categorypart> getCategorypart(){
  List<Categorypart> category=[];

  category.add(

    Categorypart(simplegetText: "Fresh Lemon", categoryPrice: "12", orderdetails: "Organic", iconpath: "assets/images/LemonLores.svg")
  );
    

 return category;
}

}