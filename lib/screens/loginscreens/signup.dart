import 'package:fapp/utils/custom/button.dart';
import 'package:fapp/utils/custom/google_auth.dart';
import 'package:fapp/utils/custom/textformfield.dart';
import 'package:fapp/screens/loginscreens/login.dart';
import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/images/bg3.jpg'),
            //     fit: BoxFit.fill,
            //   ),
            // ),
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
              child: buildsignup(),
            ),
          )
        ],
      ),
    );
  }

  Padding buildsignup() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Gupter',
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text('Create an account'),
          const SizedBox(height: 10),
          CustomTextfield(
            text: 'Username',
            control: usernamecontroller,
          ),
          const SizedBox(height: 10),
          CustomTextfield(
            text: 'Password',
            control: passwordcontroller,
          ),
          const SizedBox(height: 10),
          CustomTextfield(
            text: 'Confirm Password',
            control: confirmpasswordcontroller,
          ),
          const SizedBox(height: 10),
          Custombutton(
            press: () {},
            text: 'Sign Up',
          ),
          const SocalSignUp(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account? '),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Loginpage(),
                    ),
                  );
                },
                child: const Text('Login'),
              )
            ],
          )
        ],
      ),
    );
  }
}
