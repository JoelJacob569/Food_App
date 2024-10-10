import 'package:fapp/utils/custom_widgets/button.dart';
import 'package:fapp/utils/custom_widgets/textformfield.dart';
import 'package:fapp/screens/loginscreens/login.dart';
import 'package:flutter/material.dart';

class Changepass extends StatefulWidget {
  const Changepass({super.key});

  @override
  State<Changepass> createState() => _ChangepassState();
}

class _ChangepassState extends State<Changepass> {
  final newcontroller = TextEditingController();
  final confirmcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg3.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.15,
            left: size.width * 0.053,
            child: Container(
              height: size.height * 0.62,
              width: size.width * 0.89,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: buildpadding(),
            ),
          )
        ],
      ),
    );
  }

  Padding buildpadding() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text(
            'Create New Password',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          CustomTextfield(
            text: 'New password',
            control: newcontroller,
          ),
          const SizedBox(height: 10),
          CustomTextfield(
            text: 'Confirm password',
            control: confirmcontroller,
          ),
          const SizedBox(height: 10),
          Custombutton(
            text: 'Submit',
            press: () {
              if (newcontroller.text == confirmcontroller.text) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Loginpage(),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Password does not match'),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
