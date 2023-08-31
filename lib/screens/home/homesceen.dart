import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
body: SafeArea(child: Container(
  color: const Color(0xff2A4BA0),
  width: double.infinity,
  height: 252,
  child:  Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
        child: Row(
         
          children: [
            const Text("Hey, Halal",style: TextStyle(color: Color(0xffF8F9FB
      ),
      fontSize: 22
      ),),
            SvgPicture.asset("assets/images/Cart Icon.svg")
          ],
        ),
      )
    ],
  ),
)),
    

      
    );
  }
}