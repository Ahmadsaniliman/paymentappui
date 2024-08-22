import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/Home/service_provider.dart';
import 'package:paymentappui/Screens/AuthScreens/login.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';
import 'package:paymentappui/Color/colors.dart';

class MobileDataAmount extends StatelessWidget {
  const MobileDataAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Top-up Sim Card',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              //
              //
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Available Balance',
                      style: TextStyle(
                        color: roundColor2,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '\$2,85,856.20',
                      style: TextStyle(
                        color: blueColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Please, enter the Sim Card Number in below field.',
                      style: TextStyle(color: roundColor2),
                    ), //
                    //
                  ],
                ),
              ),
              //
              //
              const CustomTextField(
                text: 'Enter Amount',
                hintText: '\$500',
                icon: Icon(Icons.check_circle),
              ),
              const SizedBox(height: 20),
              Center(
                child: DefaultButton(
                    text: 'Next',
                    onTapped: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => const ServiceProviders(),),
                        (route) => false,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
