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
        backgroundColor: AccentColor,
        toolbarHeight: 40,
        title: Text("Flutter Workshop"),
        titleTextStyle: textFonts.copyWith(color: textColor, fontSize: headlineHomepage),
      ),
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Container(
            height: 200.0, 
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Cart(logoIcon: iconList[index % iconList.length]),
                );
              }
            ),
          ),
        Text("Flutter WorkShop", 
        style: textFonts.copyWith(color: AccentColor, fontSize: headlineSetting ),),
        SizedBox(height: 10,),
        Center(child: Image.asset("assets/images/FlutterBird.png")),
        ],
      ),
    );
  }
}
