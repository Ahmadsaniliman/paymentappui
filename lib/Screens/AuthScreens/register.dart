import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/AuthScreens/login.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';
import 'package:paymentappui/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 47,
                  width: 78,
                  child: Stack(
                    children: [
                      Container(
                        height: (47),
                        width: (48),
                        decoration: const BoxDecoration(
                          color: blueColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        child: Container(
                          height: (47),
                          width: (48),
                          decoration: const BoxDecoration(
                            color: roundColor1,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                const Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 30),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
            
                //
                const CustomTextField(
                    text: 'Email Address',
                    hintText: 'limanahmadsani@gmail.com',
                    icon: Icon(Icons.check_circle)),
            
                const CustomTextField(
                    text: 'Password',
                    hintText: '',
                    icon: Icon(Icons.visibility_off)),
                const CustomTextField(
                  text: 'Confirm Password',
                  hintText: '',
                  icon: Icon(Icons.visibility_off),
                ),
                //
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  child: Center(
                    child: DefaultButton(
                      text: 'Sign Up',
                      onTapped: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                          (route) => false,
                        );
                      },
                    ),
                  ),
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 79,
                      color: roundColor2,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text('Or'),
                    ),
                    Container(
                      height: 1,
                      width: 79,
                      color: roundColor2,
                    ),
                  ],
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset('assets/images/google (1).png'),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset('assets/images/Mask group (3).png'),
                      ),
                    ],
                  ),
                ),
                //
                const Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account?',
                          style: TextStyle(color: roundColor2),
                        ),
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                              color: blueColor,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    required this.hintText,
    required this.icon,
  });

  final String text;
  final String hintText;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      width: double.infinity,
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: roundColor2,
            ),
          ),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: roundColor2,
                ),
                suffixIcon: icon),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: roundColor2,
          ),
        ],
      ),
    );
  }
}
