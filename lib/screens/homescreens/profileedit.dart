import 'package:fapp/utils/custom_widgets/button.dart';
import 'package:fapp/utils/custom_widgets/textformfield.dart';
import 'package:flutter/material.dart';

class Profileedit extends StatefulWidget {
  const Profileedit({super.key});

  @override
  State<Profileedit> createState() => _ProfileeditState();
}

class _ProfileeditState extends State<Profileedit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            const CustomTextfield(text: 'username'),
            const SizedBox(height: 10),
            const CustomTextfield(text: 'address'),
            const SizedBox(height: 10),
            const CustomTextfield(text: 'phone No.'),
            const SizedBox(height: 10),
            Custombutton(
              text: 'Submit',
              press: () {},
            )
          ],
        ));
  }
}
