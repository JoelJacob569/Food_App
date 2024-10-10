import 'package:fapp/utils/custom_widgets/button.dart';
import 'package:fapp/utils/custom_widgets/textformfield.dart';
import 'package:flutter/material.dart';

class AddFood extends StatefulWidget {
  const AddFood({super.key});

  @override
  State<AddFood> createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
          ),
          Positioned(
            top: size.height * 0.001,
            left: size.width * 0.053,
            child: Container(
                height: size.height * 0.62,
                width: size.width * 0.89,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: buildadd()),
          )
        ],
      ),
    );
  }

  Padding buildadd() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            'Enter the details',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const CustomTextfield(
            text: 'Food Name',
          ),
          const SizedBox(height: 10),
          const CustomTextfield(
            text: 'Location',
          ),
          const SizedBox(height: 10),
          const CustomTextfield(
            text: 'Quantity',
          ),
          const SizedBox(height: 10),
          Custombutton(
            text: 'submit',
            press: () {},
          )
        ],
      ),
    );
  }
}
