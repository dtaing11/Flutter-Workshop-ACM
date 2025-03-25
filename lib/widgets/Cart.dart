import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutterworkshop/Enviroment.dart';

class Cart extends StatelessWidget {
  
  final IconData logoIcon; 

   Cart({super.key, required this.logoIcon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: cartColor,
            borderRadius: BorderRadius.all(Radius.circular(cornerRadius))
          ),
        ),
        Center(
          child:Icon(
            logoIcon,
            color: iconColor,
            size: 30
          )
      
        )
      ],
    );
    
  }

}
