import 'package:flutter/material.dart';
import 'package:paymentappui/colors.dart';

class SelectBank extends StatelessWidget {
  const SelectBank({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<dynamic, dynamic>> banksData = [
      {
        'name': 'MCB',
        'color': const Color(0xFF5266BE).withOpacity(0.4),
      },
      {
        'name': 'Afalah',
        'color': const Color(0xFF8EDFEB).withOpacity(0.4),
      },
      {
        'name': 'Soneri',
        'color': const Color(0xFFEB4335).withOpacity(0.4),
      },
      {
        'name': 'BOP',
        'color': const Color(0xFF8EDFEB).withOpacity(0.4),
      },
      {
        'name': 'HBL',
        'color': const Color(0xFF00958F).withOpacity(0.4),
      },
      {
        'name': 'UBL',
        'color': const Color(0xFF0075BF).withOpacity(0.4),
      },
      {
        'name': 'JazzCash',
        'color': const Color(0xFFEB4335).withOpacity(0.4),
      },
      {
        'name': 'EasyPaisa',
        'color': const Color(0xFF00C252).withOpacity(0.4),
      },
      {
        'name': 'MobileCash',
        'color': const Color(0xFF8EDFEB).withOpacity(0.4),
      },
      {
        'name': 'Payoneer',
        'color': const Color(0xFFFFFFFF).withOpacity(0.4),
      },
      {
        'name': 'PayPal',
        'color': const Color(0xFF003087).withOpacity(0.4),
      },
      {
        'name': 'Stripe',
        'color': const Color(0xFF5BCFF9).withOpacity(0.4),
      },
    ];
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            right: 20,
            left: 20,
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
                    'Select a Bank',
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
                      'Please, select a bank from which you want to do the money transfer.',
                      style: TextStyle(color: roundColor2),
                    ),
                  ],
                ),
              ),
              //
              const SizedBox(height: 20),

              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  ...List.generate(
                    banksData.length,
                    (index) => Container(
                        padding: const EdgeInsets.only(top: 65),
                      height: 112,
                      width: 109,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: banksData[index]['color'],
                      ),
                      child: Center(
                        child: Text(
                          banksData[index]['name']!,
                          style: const TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
