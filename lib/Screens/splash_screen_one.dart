import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/splash_screen_two.dart';
import 'package:paymentappui/colors.dart';
import 'package:sizer/sizer.dart';

class SplashScreenOne extends StatefulWidget {
  const SplashScreenOne({super.key});

  @override
  State<SplashScreenOne> createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {
  @override
  void initState() {
    super.initState();
    navigator();
  }

  void navigator() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const SplashScreenTwo(),
        ),
        (route) => false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    // final double screenWidth = size.width;
    // final double screenHeight = size.height;
    // double screenWidth = MediaQuery.sizeOf(context).width;
    // double screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            left: 15,
            right: 15,
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
                    const Text(
                      'TransferMe',
                      style: TextStyle(
                        color: blueColor,
                        fontSize: 51,
                      ),
                    ),
                    const Text(
                      'Your Best Money Transfer Partner.',
                      style: TextStyle(
                        color: blueColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 37.h),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Secured by',
                      style: TextStyle(
                        color: roundColor2,
                      ),
                    ),
                    TextSpan(
                      text: ' TransferMe.',
                      style: TextStyle(
                        color: blueColor,
                      ),
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
