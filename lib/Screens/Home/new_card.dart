import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';
import 'package:paymentappui/Screens/AuthScreens/login.dart';
import 'package:paymentappui/Screens/Home/card.dart';
import 'package:paymentappui/Screens/Home/choose_color.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({super.key});

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
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const CardScreen(),
                        ),
                        (route) => false,
                      );
                    },
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
                  const SizedBox(width: 70),
                  const Text(
                    'Add Card',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 45),
                child: Text(
                    'To add a new card, please fill out the fields below carefully in order to add card successfully.'),
              ),
              //
              const CustomTextField(
                text: 'Card Number',
                hintText: '0931-5131-5321-6477',
                icon: Icon(
                  Icons.check_circle,
                ),
              ),
              const CustomTextField(
                text: 'Holder’s Name',
                hintText: 'Liman Ahmad Sani',
                icon: Icon(
                  Icons.check_circle,
                ),
              ),
              const CustomTextField(
                text: 'Expiry Date',
                hintText: '21/24',
                icon: Icon(
                  Icons.check_circle,
                ),
              ),
              const CustomTextField(
                text: 'CVV',
                hintText: '2124',
                icon: Icon(
                  Icons.check_circle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: DefaultButton(
                  text: 'Confirm',
                  onTapped: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const ChooseColor(),
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
