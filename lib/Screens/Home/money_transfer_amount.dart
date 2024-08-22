import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/Home/select_bank.dart';
import 'package:paymentappui/Screens/AuthScreens/login.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';
import 'package:paymentappui/Color/colors.dart';

class MoneyTransferAmount extends StatelessWidget {
  const MoneyTransferAmount({super.key});

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
                    'Select Card',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
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
                      'Please, enter the amount of money transfer in field below',
                      style: TextStyle(color: roundColor2),
                    ),
                  ],
                ),
              ),
              //
              const CustomTextField(
                text: 'Enter Amount',
                hintText: '\$26,000.00',
                icon: Icon(Icons.check_circle),
              ),
              const SizedBox(height: 25),
              Center(
                child: DefaultButton(
                  text: 'Next',
                  onTapped: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const SelectBank(),
                      ),
                      (route) => false,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
