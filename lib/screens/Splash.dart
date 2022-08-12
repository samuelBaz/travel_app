import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/CustomButton.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              'assets/img.png',
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 95,
                  height: 95,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xFF8CD6F7),
                  ),
                  child: Image.asset(
                    'assets/building.png',
                    width: 95,
                    height: 95,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "Peshot",
                    style: TextStyle(
                        fontSize: 46,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PT Sans',
                        color: Colors.black),
                  ),
                ),
                const Text(
                  "Welcome to peshot\nBook easy and cheap hotels only on Peshot",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.38,),
                CustomButton(
                    text: "Let`s Start",
                    color: const Color(0XFF00CEC9),
                    textColor: Colors.white,
                    function: () => {
                      Navigator.pushNamed(context, 'login')
                    }),
                const SizedBox(height: 24,),
                const Text(
                  "Click to continue",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                      fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
