import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/AuthScreens/register.dart';
import 'package:paymentappui/Screens/AuthScreens/verify_phone.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';
import 'package:paymentappui/Color/colors.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
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
                  const SizedBox(width: 60),
                  const Text(
                    'Phone Number',
                    style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              //
              const Padding(
                padding: EdgeInsets.only(top: 45, bottom: 45),
                child: Text(
                  textAlign: TextAlign.center,
                  'Please add your\nmobile phone number',
                  style: TextStyle(
                    color: roundColor2,
                  ),
                ),
              ),
              //
              const CustomTextField(
                text: 'Phone Number',
                hintText: '+2348088405841',
                icon: Icon(Icons.check_circle),
              ),
              const SizedBox(height: 50),
              DefaultButton(
                text: 'Verify',
                onTapped: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const VerifyPhone(),
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
