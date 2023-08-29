
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List sliderData =[
    {
      "id":1 ,"text_data":"Your holiday shopping delivered to Screen one"},
      {
      "id":2 ,"text_data":"Your holiday shopping delivered to Screen two"
      }
  ];

  final CarouselController carouselController = CarouselController();
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
Stack(
  children: [

    InkWell(
      onTap : (){},
      
    )
  ],
)
      ],
    );
  }
}