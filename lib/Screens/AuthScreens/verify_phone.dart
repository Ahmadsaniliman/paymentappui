import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/AuthScreens/register.dart';
import 'package:paymentappui/Screens/AuthScreens/set_pin.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';
import 'package:paymentappui/colors.dart';

class VerifyPhone extends StatelessWidget {
  const VerifyPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 63,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: blueColor,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  const Text(
                    'Verify Your Number',
                    style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 45, bottom: 45),
                child: Text(
                  textAlign: TextAlign.center,
                  'Please verify your\nPhone Number',
                  style: TextStyle(
                    color: roundColor2,
                  ),
                ),
              ),
              //
              const CustomTextField(
                text: 'Enter verification code (5-digit)',
                hintText: '56783',
                icon: Icon(Icons.check_circle),
              ),
              const SizedBox(height: 40),
              DefaultButton(
                text: 'Verify',
                onTapped: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const SetPin(),
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
