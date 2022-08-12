import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  String text;
  Color color;
  Color textColor;
  Function function;

  CustomButton(
      {Key? key,
      required this.text,
      required this.color,
      required this.textColor,
      required this.function})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: widget.color,
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.25), blurRadius: 4)
            ]),
        alignment: Alignment.center,
        child: Text(
          widget.text,
          style: TextStyle(
              color: widget.textColor,
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      onTap: () => widget.function(),
    );
  }
}
