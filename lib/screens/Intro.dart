import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/CustomButton.dart';
import 'package:travel_app/widgets/Dot.dart';

class Intro extends StatefulWidget {
  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  List sliders = [
    {
      "title": "Plan your trip",
      "subtitle": "Custom and fast planning with a low price",
      "path": "assets/traveller.png"
    },
    {
      "title": "Plan your Travel",
      "subtitle": "Custom and fast planning with a low price",
      "path": "assets/traveller.png"
    },
    {
      "title": "Plan your Test",
      "subtitle": "Custom and fast planning with a low price",
      "path": "assets/traveller.png"
    }
  ];

  int pageSelected = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: PageView(
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        pageSelected = page;
                      });
                    },
                    children: sliders
                        .map((slides) =>
                        Slide(
                          title: slides["title"],
                          subtitle: slides["subtitle"],
                          imagePath: slides["path"],
                          positionActive: pageSelected,))
                        .toList())),
            CustomButton(text: "Log in",
                color: const Color(0xFF00CEC9),
                textColor: Colors.white,
                function: () => {}),
            const SizedBox(height: 18,),
            CustomButton(text: "Create account",
                color: Colors.white,
                textColor: Colors.black,
                function: () => {}),
            const SizedBox(height: 24)
          ],
        ),
      ),
    ));
  }
}

class Slide extends StatelessWidget {
  String title;
  String imagePath;
  String subtitle;
  int positionActive;

  Slide({Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.positionActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 50),
          child: Image.asset(imagePath, width: 300, height: 300),
        ),
        Dot(positionActive: positionActive),
        Text(title,
            style: const TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w800,
                fontSize: 30)),
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 30),
          child: Text(
            subtitle,
            style: const TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400,
                fontSize: 12),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
