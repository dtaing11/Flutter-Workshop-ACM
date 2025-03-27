

import 'package:flutter/material.dart';
import 'package:flutterworkshop/Enviroment.dart';

class Cart extends StatelessWidget {
  final IconData logoIcon;

  const Cart({required this.logoIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, 
      height: 150, 
      decoration: BoxDecoration(
        color: AccentColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 4, offset: Offset(0, 4)),
        ],
      ),
      child: Center(
        child: Icon(
          logoIcon,
          size: 40, // Define the icon size
          color:iconColor, // Icon color
        ),
      ),
    );
  }
}
