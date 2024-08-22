import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_eight.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';
import 'package:paymentappui/Color/colors.dart';

class OnBoardSeven extends StatefulWidget {
  const OnBoardSeven({super.key});

  @override
  State<OnBoardSeven> createState() => _OnBoardSevenState();
}

class _OnBoardSevenState extends State<OnBoardSeven> {
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
                child: Image.asset('assets/images/Plain credit card-pana 1.png'),
              ),
              const Text(
                textAlign: TextAlign.center,
                'Bills Payment\nMade Easy',
                style: TextStyle(
                  color: blackColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                textAlign: TextAlign.center,
                'Pay monthly or daily bills at home in a site of TransferMe.',
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
              const SizedBox(height: 45),
              DefaultButton(
                text: 'Continue',
                onTapped: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const OnBoardEight(),
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
