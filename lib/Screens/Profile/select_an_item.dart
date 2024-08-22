import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';

class ScanItem extends StatelessWidget {
  const ScanItem({super.key});

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
                    'Scan Item',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  'Scan a QR Code',
                  style: TextStyle(
                    color: roundColor2,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Container(
                  height: 304,
                  width: 259,
                  decoration: BoxDecoration(
                      color: const Color(0xFF1D6AFF).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                        Positioned(
                            top: 48,
                            left: 30,
                            child: Image.asset('assets/images/Group 59.png')),
                        Positioned(
                            top: 48,
                            right: 30,
                            child: Image.asset('assets/images/Group 60.png')),
                        Positioned(
                            bottom: 48,
                            left: 30,
                            child: Image.asset('assets/images/Group 61.png')),
                        Positioned(
                            bottom: 48,
                            right: 30,
                            child: Image.asset('assets/images/Group 62 (1).png')),
                      Center(
                        child: Image.asset('assets/images/Vector (73).png'),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 128,
                width: 259,
                decoration: BoxDecoration(
                    color: const Color(0xFF1D6AFF).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    '''Please, align QR Code withisn\nthe frame to make scanning\neasily detectable.''',
                    style: TextStyle(
                      color: blueColor,
                      height: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
