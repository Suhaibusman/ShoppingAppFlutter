
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 late final PageController pagecontroller;
@override
  void initState() {
    pagecontroller=PageController(
      initialPage: 0,
      viewportFraction: 0.85,
    );
    super.initState();
  }
  @override
  void dispose() {
   pagecontroller.dispose();
    super.dispose();
  }
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
    return  Scaffold(

      body: SafeArea(
        child: Column(
      
      children: [
        Center(
          child: SizedBox(
        height: 294,
        width: 269,
        
        child: PageView.builder(
          controller: pagecontroller,
          itemBuilder: ((context, index) {
          return AnimatedBuilder(animation: pagecontroller, builder: (context, child) {
            return child!;
          },
          child: Container(
            margin: const EdgeInsets.only(top: 33,),
            color: Colors.blue,
            
          ),
          
          );
        }),itemCount: 2,),
          ),
        )
      ],        
        ),
      ),
    );
  }
}