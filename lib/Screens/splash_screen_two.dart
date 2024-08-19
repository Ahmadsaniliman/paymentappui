import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/splash_screen_three.dart';
import 'package:paymentappui/colors.dart';
import 'package:sizer/sizer.dart';

class SplashScreenTwo extends StatefulWidget {
  const SplashScreenTwo({super.key});

  @override
  State<SplashScreenTwo> createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {
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
          builder: (context) => const SplashScreenThree(),
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
      backgroundColor: blueColor,
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
                              color: roundColor2,
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
                        color: whiteColor,
                        fontSize: 51,
                      ),
                    ),
                    const Text(
                      'Your Best Money Transfer Partner.',
                      style: TextStyle(
                        color: whiteColor,
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
                        color: whiteColor,
                      ),
                    ),
                    TextSpan(
                      text: ' TransferMe.',
                      style: TextStyle(
                        color: whiteColor,
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
