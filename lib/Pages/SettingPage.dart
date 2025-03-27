import 'package:flutter/material.dart';
import 'package:flutterworkshop/Enviroment.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff5433ff), Color(0xff20bdff), Color(0xffa5fecb)],
                stops: [0, 0.5, 1],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Settings',
                      style: textFonts.copyWith(fontSize: headlineSetting, color: textColor),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Profile',
                          style: textFonts.copyWith(fontSize: fontSize, color: textColor),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Privacy',
                          style: textFonts.copyWith(fontSize: fontSize, color: textColor),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Hello',
                          style: textFonts.copyWith(fontSize: fontSize, color: textColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
