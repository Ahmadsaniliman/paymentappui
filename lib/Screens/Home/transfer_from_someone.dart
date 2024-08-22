import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';
import 'package:paymentappui/Screens/AuthScreens/register.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';

class TransferFromSomeOne extends StatelessWidget {
  const TransferFromSomeOne({super.key});

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
                    'Transfer Request',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
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
                      'Please, enter the receiver’s bank account number or phone number with the amount of transfer request in below field.',
                      style: TextStyle(color: roundColor2),
                    ), //
                    //
                  ],
                ),
              ),
              //
              const CustomTextField(
                text: 'Sender"s Account no',
                hintText: '008923179328747',
                icon: Icon(Icons.check),
              ),
              const CustomTextField(
                text: 'Amount of Transfer Request',
                hintText: '\$40,000',
                icon: Icon(Icons.check),
              ),
              const CustomTextField(
                text: 'Requestee’s Name',
                hintText: 'Liman Sani',
                icon: Icon(Icons.check),
              ),
              const SizedBox(height: 30),
              DefaultButton(
                text: 'Next',
                onTapped: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
