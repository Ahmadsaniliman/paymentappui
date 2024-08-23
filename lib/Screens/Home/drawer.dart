import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: 300,
          decoration: const BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              children: [
                Image.asset('assets/images/59.png'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        'William Smith',
                        style: TextStyle(
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'william.smith@gmail.com',
                        style: TextStyle(
                          color: roundColor2,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Row(
                        children: [
                          Image.asset('assets/images/wallet.png'),
                          const SizedBox(width: 20),
                          const Text(
                            'My Wallet',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
