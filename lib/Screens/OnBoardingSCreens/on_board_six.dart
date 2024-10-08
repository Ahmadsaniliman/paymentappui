import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_seven.dart';
import 'package:paymentappui/Color/colors.dart';

class OnBoardSix extends StatefulWidget {
  const OnBoardSix({super.key});

  @override
  State<OnBoardSix> createState() => _OnBoardSixState();
}

class _OnBoardSixState extends State<OnBoardSix> {
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
                child: Image.asset('assets/images/Wallet-amico 1.png'),
              ),
              const Text(
                textAlign: TextAlign.center,
                'Multiple Credit Cards',
                style: TextStyle(
                  color: blackColor,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                textAlign: TextAlign.center,
                'Provides the 100% freedom of the financial management with Multiple Payment Options for local & International Payments.',
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
                      builder: (context) => const OnBoardSeven(),
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
