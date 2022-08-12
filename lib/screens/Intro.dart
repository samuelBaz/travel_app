import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget{

  List sliders = [
    {"title": "Plan your trip", "subtitle": "Custom and fast planning with a low price", "path": "assets/slide1.png"},
    {"title": "Plan your trip", "subtitle": "Custom and fast planning with a low price", "path": "assets/slide1.png"},
    {"title": "Plan your trip", "subtitle": "Custom and fast planning with a low price", "path": "assets/slide1.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Intro Here")
          ],
        ),
      )
    );
  }

}