
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
  int index =0;
  List<Categorypart> category = [];
  List<Discountpart> discount = [];
   final items= const <Widget>  [
            Icon(Icons.add, size: 30),
            Icon(Icons.category, size: 30),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.more_vert, size: 30),
          
          ];
  @override
  void initState() {
    super.initState();
    _getDiscount();
    _getCategories();
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
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              margin: const EdgeInsets.only(left:10 ,top: 10 ,bottom:10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
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
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.3,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
            padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
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

  void _getDiscount() {
    setState(() {
      discount = Discountpart.getDiscount();
    });
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
            child: Text(
              "Recommended",
              style: TextStyle(fontFamily: "Manrope", fontSize: 30),
            ),
          ),
          SizedBox(
            height: 194,
            
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color(0xffE0E2EE),
                      ),
width: 150,
                      // height: 250,
                      // width: 200,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: SvgPicture.asset(
                                category[index].iconpath,
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                          //  SvgPicture.asset("assets/images/Line 2.svg"),
                          Text(
                            category[index].simplegetText,
                            style: const TextStyle(
                                fontFamily: "Manrope",
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            category[index].orderdetails,
                            style: const TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff616A7D),
                            ),
                          ),

                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8 ,top: 10),
                              child: Container(height: 24, width: 108, 
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                color: Color(0xffFFFFFF)
                              ),
                              child: Row(
                                children: [
                                  const Padding(
                                  
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                                              "Unit",
                                                              style: TextStyle(
                                                                fontFamily: "Manrope",
                                                                fontSize: 12,
                                                                fontWeight: FontWeight.w400,
                                                                color: Color(0xff616A7D),
                                                              ),
                                  
                                                            ),
                                  ),
                          Padding(
                            padding: const EdgeInsets.only(left:10),
                            child: Text(
                              category[index].categoryPrice,
                              style: const TextStyle(
                                fontFamily: "Manrope",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                                ],
                              ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(width: 0.1),
                itemCount: category.length),
          )
        ],
      )),
      
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.black)
        ),
        child: CurvedNavigationBar(
          
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.amber,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          items: items,
          height: 60,
          index: index,
          onTap: (index) => setState(() =>
           this.index =index    ),
         ),
      ),
   
    );
  }
}
