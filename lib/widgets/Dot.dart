import 'package:flutter/cupertino.dart';

class Dot extends StatelessWidget{

  int positionActive;
  Dot({Key? key, required this.positionActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 11,
            height: 11,
            margin: const EdgeInsets.symmetric(horizontal: 3.5),
            decoration: BoxDecoration(
                color: positionActive == 0 ? const Color(0xFF00CEC9): const Color(0XFFDFE6E9),
                borderRadius: const BorderRadius.all(Radius.circular(5.5))
            ),
          ),
          Container(
            width: 11,
            height: 11,
            margin: const EdgeInsets.symmetric(horizontal: 3.5),
            decoration: BoxDecoration(
                color: positionActive == 1 ? const Color(0xFF00CEC9): const Color(0XFFDFE6E9),
                borderRadius: const BorderRadius.all(Radius.circular(5.5))
            ),
          ),
          Container(
            width: 11,
            height: 11,
            margin: const EdgeInsets.symmetric(horizontal: 3.5),
            decoration: BoxDecoration(
              color: positionActive == 2 ? const Color(0xFF00CEC9): const Color(0XFFDFE6E9),
              borderRadius: const BorderRadius.all(Radius.circular(5.5))
            ),
          )
        ],
      ),
    );
  }

}