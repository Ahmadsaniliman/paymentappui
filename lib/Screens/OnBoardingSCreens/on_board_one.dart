import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_two.dart';
import 'package:paymentappui/Screens/splash_screen_three.dart';
import 'package:paymentappui/colors.dart';
import 'package:sizer/sizer.dart';

class OnBoardOne extends StatelessWidget {
  const OnBoardOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 27.h,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 89,
                      width: 132,
                      child: Stack(
                        children: [
                          Container(
                            height: (83),
                            width: (83),
                            decoration: const BoxDecoration(
                              color: blueColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Positioned(
                            left: 50,
                            child: Container(
                              height: (83),
                              width: (83),
                              decoration: const BoxDecoration(
                                color: roundColor1,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome to.\n',
                            style: TextStyle(
                              color: blackColor,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'TrasnferMe',
                            style: TextStyle(color: blueColor, fontSize: 45),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Your Best Money Transfer Partner.',
                      style: TextStyle(
                        color: roundColor2,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    DefaultButton(
                      text: 'Get Started',
                      onTapped: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const OnBoardTwo(),
                          ),
                          (route) => false,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.text,
    required this.onTapped,
  });
  final String text;
  final VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        height: 60,
        width: 201,
        decoration: BoxDecoration(
          color: blueColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: whiteColor, fontSize: 23),
          ),
        ),
      ),
    );
  }
}
