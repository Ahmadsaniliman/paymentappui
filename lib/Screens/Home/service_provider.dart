import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/Home/select_card_transfer.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';
import 'package:paymentappui/Color/colors.dart';

class ServiceProviders extends StatelessWidget {
  const ServiceProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
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
                    'Sim Card Provider',
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
                      'Please, select a Sim Card Service on which you want to Top-up.',
                      style: TextStyle(color: roundColor2),
                    ), //
                    //
                  ],
                ),
              ),
              //
              //
              Wrap(
                spacing: 15,
                runSpacing: 15,
                children: [
                  ...List.generate(4, (index) {
                    final List<dynamic> colors = [
                      const Color(0xFF5063BF).withOpacity(0.4),
                      const Color(0xFF3BC3F2).withOpacity(0.4),
                      const Color(0xFF80C9D4).withOpacity(0.4),
                      const Color(0xFFF58220).withOpacity(0.4),
                    ];
                    final text = [
                      'Jazz',
                      'Telenor',
                      'Zong',
                      'Ufone',
                    ];
                    return Container(
                      padding: const EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: colors[index],
                      ),
                      height: 170,
                      width: 165,
                      child: Center(
                        child: Text(
                          text[index],
                          style: const TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ),

              //

              const SizedBox(height: 40),
              Center(
                child: DefaultButton(
                  text: 'Next',
                  onTapped: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const SelectCardTransfer(),
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
