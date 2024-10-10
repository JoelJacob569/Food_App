import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String text;
  final TextEditingController? control;
  final bool isObscure;

  const CustomTextfield({
    Key? key,
    this.text = '',
    this.control,
    this.isObscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      controller: control,
      decoration: InputDecoration(
        labelText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
