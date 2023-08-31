import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoppingapp/models/discount_part.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 List<Discountpart> discount=[];

 void _getDiscount() {

 setState(() {
    discount = Discountpart.getDiscount();
  });
}

 @override
 void initState(){
   super.initState();
  _getDiscount();
 }

  @override
  Widget build(BuildContext context) {
    _getDiscount();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          topbar(),
          const SizedBox(height: 20,),
         ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
           return Container(
            height: 123,
            width: 269,
           color: Colors.amber,
           child: const Text("check"),
           );
         },)
        ],
      )),
    );
  }

  Container topbar() {
    return Container(
          color: const Color(0xff2A4BA0),
          width: double.infinity,
          height: 252,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Hey, Halal",
                        style: TextStyle(
                            color: Color(0xffF8F9FB),
                            fontSize: 22,
                            fontFamily: "Manrope",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/images/Cart Icon.svg",
                      height: 30,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xff153075),
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28)),
                    hintText: 'Search Product or Store',
                    hintStyle: const TextStyle(
                        color: Color(0xff8891A5), fontSize: 14),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child:
                          SvgPicture.asset("assets/images/Search Icon.svg"),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      children: [
                        Text(
                          "DELIVERY TO",
                          style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color:
                                  const Color(0xffF8F9FB).withOpacity(0.5)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Text(
                            "WITHIN",
                            style: TextStyle(
                                fontFamily: "Manrope",
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color:
                                    const Color(0xffF8F9FB).withOpacity(0.5)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
               Row(
                      children: [
                    const  SizedBox(
                        width: 20,
                       ),
                         const Text("Green Way 3000, Sylhet" ,style: TextStyle(
                            
                            fontFamily: "Manrope",fontSize: 14,
                          
                            color: Color(0xffF8F9FB)),
                            
                            ),
                             Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: SvgPicture.asset("assets/images/arrow Iocn.svg"),
                        ),
                            const SizedBox(width: 150,),
                        
                        const Text("1 hour" ,style: TextStyle(
                        
                        fontFamily: "Manrope",fontSize: 14,
                      
                        color: Color(0xffF8F9FB)),
                        
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: SvgPicture.asset("assets/images/arrow Iocn.svg"),
                        )

                          
                      ],
                    ),
            ],
          ),
        );
  }
}


