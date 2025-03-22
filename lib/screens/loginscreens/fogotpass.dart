import 'package:fapp/utils/custom_widgets/button.dart';
import 'package:fapp/utils/custom_widgets/textformfield.dart';
import 'package:fapp/screens/loginscreens/changepass.dart';
import 'package:flutter/material.dart';

class Forgotpass extends StatefulWidget {
  const Forgotpass({super.key});

  @override
  State<Forgotpass> createState() => _ForgotpassState();
}

class _ForgotpassState extends State<Forgotpass> {
  bool showSecondTextField = false;
  final mycontroller = TextEditingController();
  String otp = '';

  void navigateToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Changepass()),
    );
  }

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
                color: Colors.grey.withValues(alpha: 0.7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: buildcolumn(),
            ),
          )
        ],
      ),
    );
  }

  Padding buildcolumn() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text(
            'Enter your Username',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          CustomTextfield(
            text: 'Username',
            control: mycontroller,
          ),
          if (showSecondTextField)
            Column(
              children: [
                const SizedBox(height: 10),
                TextFormField(
                  onChanged: (value) {
                    otp = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter your OTP',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Resend OTP'),
                    ),
                  ],
                ),
              ],
            ),
          const SizedBox(height: 20),
          Custombutton(
            text: 'Verify',
            press: () {
              if (showSecondTextField) {
                if (otp == '123456') {
                  navigateToNextPage();
                } else {
                  // Handle incorrect OTP
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Incorrect OTP'),
                      duration: Duration(seconds: 3),
                    ),
                  );
                }
              } else {
                setState(() {
                  showSecondTextField = true;
                });
              }
            },
          )
        ],
      ),
    );
  }
}
