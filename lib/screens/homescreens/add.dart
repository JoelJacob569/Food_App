import 'package:fapp/utils/custom/button.dart';
import 'package:fapp/utils/custom/textformfield.dart';
import 'package:flutter/material.dart';

class AddFood extends StatefulWidget {
  const AddFood({super.key});

  @override
  State<AddFood> createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: Padding(
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
        ));
  }

//   Padding buildadd() {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Column(
//         children: [
//           const SizedBox(height: 10),
//           const Text(
//             'Enter the details',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 10),
//           const CustomTextfield(
//             text: 'Food Name',
//           ),
//           const SizedBox(height: 10),
//           const CustomTextfield(
//             text: 'Location',
//           ),
//           const SizedBox(height: 10),
//           const CustomTextfield(
//             text: 'Quantity',
//           ),
//           const SizedBox(height: 10),
//           Custombutton(
//             text: 'submit',
//             press: () {},
//           )
//         ],
//       ),
//     );
//   }
}
