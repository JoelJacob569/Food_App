import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String? text;
  final Function? press;

  const Custombutton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press as void Function()?,
      child: Text(
        text as String,
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        fixedSize: Size(350, 50),
      ),
    );
  }
}
