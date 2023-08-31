// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;
  
  //final Widget IconData;
  final double buttonHeight;
  final double buttonWidth;
  final Color backgroundColor;
  final Color fontColor;
  final IconData? icondata;
  const CustomButtonWidget(
      {super.key, required this.buttonText, required this.onPressed, required this.buttonHeight, required this.buttonWidth, required this.backgroundColor, required this.fontColor, this.icondata,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
     style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: backgroundColor,
minimumSize:  Size(buttonWidth, buttonHeight),
shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
      child: Wrap(
        children: [
          Text(buttonText ,style:  TextStyle(fontFamily: "OpenSans", fontSize: 16,fontWeight: FontWeight.bold ,color: fontColor),),
           Icon(icondata!, color: Colors.black,)
        ],
      ),
    );
  }
}
