import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/AuthScreens/register.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';
import 'package:paymentappui/colors.dart';

class OnBoardEight extends StatefulWidget {
  const OnBoardEight({super.key});

  @override
  State<OnBoardEight> createState() => _OnBoardEightState();
}

class _OnBoardEightState extends State<OnBoardEight> {
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
                child: Image.asset('assets/images/Group 64.png'),
              ),
              const Text(
                textAlign: TextAlign.center,
                'Color Your Cards',
                style: TextStyle(
                  color: blackColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                textAlign: TextAlign.center,
                'Provides better cards management  when using Multiple Cards by using a  different color for each payment  method.',
                style: TextStyle(
                  color: roundColor2,
                  fontSize: 13,
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
                      builder: (context) => const RegisterScreen(),
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
