import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/home/homesceen.dart';
import 'package:shoppingapp/widgets/buttons.dart';


// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
       home:  HomeScreen(),
     // home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
     
      body: Container(
        color: Colors.blue,
        height: MediaQuery.of(context).size.height *1,
        width: MediaQuery.of(context).size.width *1,
        child: Center(
          child: CustomButtonWidget(buttonText: "Get Started",onPressed: () {
            
          }, buttonHeight: 70, buttonWidth: 253, backgroundColor:const Color.fromRGBO(250, 251, 253, 1), fontColor: Colors.black,),
        ),
      ) 
    );
  }
}
