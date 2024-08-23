import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';

class QuestionAnswer extends StatelessWidget {
  const QuestionAnswer({super.key});

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
                    'Security Questions',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  const Text(
                    'What was your\nFirst School’s\nName? ',
                    style: TextStyle(
                      color: blueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    ),
                  ),
                  //
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Text(
                      'Please, write a short answer in the field below.',
                      style: TextStyle(color: roundColor2),
                    ),
                  ),
                  Container(
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: whiteColor,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        border: InputBorder.none,
                        hintText: 'Write your answer here...',
                        hintStyle: TextStyle(
                          color: blueColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 250),
              DefaultButton(
                text: 'Save',
                onTapped: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
