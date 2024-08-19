import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_five.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_three.dart';
import 'package:paymentappui/colors.dart';
import 'package:sizer/sizer.dart';

class OnBoardFour extends StatefulWidget {
  const OnBoardFour({super.key});

  @override
  State<OnBoardFour> createState() => _OnBoardFourState();
}

class _OnBoardFourState extends State<OnBoardFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 350,
                width: 350,
                child:
                    Image.asset('assets/images/Mobile payments-rafiki 1.png'),
              ),
              const Text(
                'Free Transactions',
                style: TextStyle(
                  color: blackColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                textAlign: TextAlign.center,
                'Provides the quality of the financial system with free money transactions without any fees.',
                style: TextStyle(
                  color: roundColor2,
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      3,
                      (index) => Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: blueColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              //
              const SizedBox(height: 50),
              DefaultButton(
                text: 'Continue',
                onTapped: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const OnBoardFive(),
                    ),
                    (route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
