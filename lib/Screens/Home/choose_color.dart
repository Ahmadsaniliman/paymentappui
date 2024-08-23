import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';

class ChooseColor extends StatelessWidget {
  const ChooseColor({super.key});

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
                  const SizedBox(width: 70),
                  const Text(
                    'Card Color',
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
                child: Text(
                  'Please, select a color to differentiat this card from other cards you have attached and organize your cards better.',
                  style: TextStyle(
                    color: roundColor2,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                height: 172,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: roundColor1),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Liman',
                          style: TextStyle(color: whiteColor),
                        ),
                        Text(
                          'A debit card',
                          style: TextStyle(color: whiteColor),
                        ),
                      ],
                    ),
                    SizedBox(height: 7),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2423 3581 9503 2414',
                          style: TextStyle(
                            color: whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '21/24',
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    //
                    //
                    SizedBox(height: 40),
                    Text(
                      'Your Balance',
                      style: TextStyle(
                        color: whiteColor,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$3,100.30',
                          style: TextStyle(
                            color: whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Visa',
                          style: TextStyle(
                            color: whiteColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Wrap(
                  spacing: 30,
                  runSpacing: 20,
                  children: [
                    ...List.generate(
                      15,
                      (index) {
                        final List colorData = [
                          const Color(0xFF8CD9E9),
                          const Color(0xFF34A853),
                          const Color(0xFF0166FF),
                          const Color(0xFFF59D31),
                          const Color(0xFFFC6020),
                          const Color(0xFF009CDE),
                          const Color(0xFFE80B26),
                          const Color(0xFFFBBC05),
                          const Color(0xFF979797),
                          const Color(0xFF1E1E1E),
                          const Color(0xFF000000),
                          const Color(0xFF003087),
                          const Color(0xFF001A4D),
                          const Color(0xFF392993),
                          const Color(0xFF6875E2),
                        ];
                        return Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colorData[index],
                          ),
                        );
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 44,
                      width: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            border: Border.all(), shape: BoxShape.circle),
                        child: const Center(
                          child: Text('+'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: DefaultButton(
                  text: 'Confirm',
                  onTapped: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
