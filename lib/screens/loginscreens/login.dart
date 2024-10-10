import 'package:fapp/screens/mainhome.dart';
import 'package:fapp/utils/custom_widgets/button.dart';
import 'package:fapp/utils/custom_widgets/google_auth.dart';
import 'package:fapp/utils/custom_widgets/textformfield.dart';
import 'package:fapp/screens/loginscreens/fogotpass.dart';
import 'package:fapp/screens/loginscreens/signup.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final namecontroller = TextEditingController();
  final passcontroller = TextEditingController();

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
              child: buildlogin(),
            ),
          )
        ],
      ),
    );
  }

  Padding buildlogin() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text(
            'Welcome Back!',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Gupter',
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text('Login to your account'),
          const SizedBox(height: 20),
          CustomTextfield(
            text: 'Username',
            control: namecontroller,
          ),
          const SizedBox(height: 10),
          CustomTextfield(
            text: 'Password',
            control: passcontroller,
            isObscure: true,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Forgotpass(),
                    ),
                  );
                },
                child: const Text('Forgot Password?'),
              ),
            ],
          ),
          Custombutton(
            text: 'Login',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Mainhome(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          const SocalSignUp(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an acconut?'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Signuppage(),
                    ),
                  );
                },
                child: const Text('Signup'),
              )
            ],
          )
        ],
      ),
    );
  }
}
