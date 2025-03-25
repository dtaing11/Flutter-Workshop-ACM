import 'package:flutter/material.dart';
import 'package:flutterworkshop/Enviroment.dart';
import 'package:flutterworkshop/widgets/Cart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  

  @override


  
  Widget build(BuildContext context) {

    List<IconData> iconList = [
      Icons.airplane_ticket_rounded,
      Icons.local_airport_rounded,
      Icons.directions_bus_rounded,
      Icons.directions_car_rounded,
      Icons.pedal_bike_rounded,
      Icons.train_rounded,
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor:AccentColor ,
        title: Text("Flutter Wrokshop"),
        titleTextStyle: textFonts.copyWith(color: textColor, fontSize:headlineFontSize ),
      ),
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
                return Cart(logoIcon: iconList[index]); 
              },
           )
        ],
      ),
      
    );
  }
}