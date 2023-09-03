import 'package:flutter/material.dart';

import 'package:circular_bottom_navigation/tab_item.dart';
class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  List<TabItem> tabItems = List.of([
    TabItem(Icons.home, "Home", Colors.black, labelStyle: const TextStyle(fontWeight: FontWeight.normal)),
    TabItem(Icons.category, "Categories", Colors.black, labelStyle: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    TabItem(Icons.favorite, "Favorite", Colors.black, circleStrokeColor: Colors.blue),
    TabItem(Icons.more_vert, "More", Colors.black),
  ]);

 
  @override
  Widget build(BuildContext context) {
   return const Scaffold(
    // BottomNavigationBar(items: 
    
    
    // BottomNavigationBarItem(icon: Icon(Icons.home) ,
    
    // label: "home"
  
    );
  }
}