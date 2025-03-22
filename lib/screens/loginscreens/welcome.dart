import 'package:fapp/utils/custom/button.dart';
import 'package:fapp/utils/custom/or_divider.dart';
import 'package:fapp/screens/loginscreens/login.dart';
import 'package:fapp/screens/loginscreens/signup.dart';
import 'package:flutter/material.dart';

class Welcompage extends StatelessWidget {
  const Welcompage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.6,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg2.jpg'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Lobster',
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Custombutton(
            text: "Login",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Loginpage(),
                ),
              );
            },
          ),
          SizedBox(height: size.height * 0.02),
          const OrDivider(),
          SizedBox(height: size.height * 0.02),
          Custombutton(
            text: "Signup",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Signuppage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
