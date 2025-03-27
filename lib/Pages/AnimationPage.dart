import 'package:flutter/material.dart';
import 'package:flutterworkshop/Pages/Home.dart';
import 'package:flutterworkshop/Pages/SettingPage.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin {
 late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync:this, 
    duration: Duration(milliseconds: 150 ));
  }

  void toggle  () => 
  animationController.isDismissed? 
  animationController.forward():
  animationController.reverse();

   void _onSwipe(DragEndDetails details) {
    if (details.primaryVelocity! > 0) {
      toggle();
    }
    else if (details.primaryVelocity! < 0) {
      toggle();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onHorizontalDragEnd: _onSwipe,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, _){
          double slideRight = 200 * animationController.value;
          double slideDown = 100 * animationController.value;
          double scale  = 1 - ( 0.1 * animationController.value);
          return Stack(
         
          children: [
            SettingPage(),
            Transform(
              transform: Matrix4.identity()
              ..translate(slideRight, slideDown, 0.0)
              ..scale(scale),
              child: HomePage()),
          ],
        );
        },
        
      ),
    ) ;
  }
}