import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoppingapp/models/categories_part.dart';
import 'package:shoppingapp/models/discount_part.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Discountpart> discount = [];
    List<Categorypart> category=[];
  void _getDiscount() {
    setState(() {
      discount = Discountpart.getDiscount();
    });
  }

  @override
  void initState() {
    super.initState();
    _getDiscount();
    _getCategories();
  }
      void _getCategories() {
    setState(() {
      category = Categorypart.getCategorypart();
    });
  }

 
  @override
  Widget build(BuildContext context) {
    _getDiscount();
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          topbar(),
          const SizedBox(
            height: 15,
          ),
          discountview(),
          
         const Padding(
           padding: EdgeInsets.only(left: 20),
           child: Text("Recommended", style: TextStyle(fontFamily: "Manrope" ,fontSize: 30),),
         ),


          SizedBox(
            height: 200,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              
              return Container(
                 color: const Color(0xffE0E2EE),
                
                height: 192,
                width: 128,
          
                child: Column(
                  children: [
                    Center(
                      child: SvgPicture.asset(category[index].iconpath),
          
                    ),
                    SvgPicture.asset("assets/images/Line 2.svg"),
                    Text(category[index].simplegetText ,style: const TextStyle(
                      fontFamily: "Manrope",fontSize: 20 ,fontWeight: FontWeight.w600
                    ),
                    
                    
                    ),
                    Text(category[index].orderdetails
                    ,style: const TextStyle(
                      fontFamily: "Manrope",fontSize: 12 ,fontWeight: FontWeight.w400,
                      color: Color(0xff616A7D)
                    ),),
                    Center(
                      child: Container(
                        height: 24,
                        width: 108,
                        color: Colors.white,
                      ),
                    )
          
                  ],
                ),
              );
            }, separatorBuilder: (context, index) => const SizedBox(width:20), itemCount: category.length),
          )


        ],
      )),
    );
  }

  SizedBox discountview() {
    return SizedBox(
          height: 150,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 123,
                  width: 275,
                  decoration: BoxDecoration(
                      color: discount[index].boxColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SvgPicture.asset("assets/images/Image Icon.svg"),
                      ),
                      Column(
                        children: [
                          Text(discount[index].simplegetText,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Manrope",
                                  color: Colors.white)),
                          Text(discount[index].discountpercent,
                              style: const TextStyle(
                                  fontSize: 26,
                                  fontFamily: "Manrope",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text(discount[index].orderquantity,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Manrope",
                                  color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: discount.length),
        );
  }

  Container topbar() {
    return Container(
      color: const Color(0xff2A4BA0),
      width: double.infinity,
      height: 242,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    "Hey, Suhaib",
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
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(28)),
                hintText: 'Search Product or Store',
                hintStyle:
                    const TextStyle(color: Color(0xff8891A5), fontSize: 14),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset("assets/images/Search Icon.svg"),
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
                          color: const Color(0xffF8F9FB).withOpacity(0.5)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: Text(
                        "WITHIN",
                        style: TextStyle(
                            fontFamily: "Manrope",
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffF8F9FB).withOpacity(0.5)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const Text(
                "Green Way 3000, Sylhet",
                style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 14,
                    color: Color(0xffF8F9FB)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SvgPicture.asset("assets/images/arrow Iocn.svg"),
              ),
              const SizedBox(
                width: 150,
              ),
              const Text(
                "1 hour",
                style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 14,
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
