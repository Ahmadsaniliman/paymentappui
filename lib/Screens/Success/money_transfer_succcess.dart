import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';

class MoneyTransferSucess extends StatelessWidget {
  const MoneyTransferSucess({super.key});

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 208,
                  width: 208,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: roundColor1,
                  ),
                  child: Center(
                    child: Image.asset('assets/images/Path 395.png'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Column(
                  children: [
                    Text(
                      'Congrats!',
                      style: TextStyle(
                        color: blueColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.center,
                      'Money Transfered\nSuccessfully',
                      style: TextStyle(
                        color: blueColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 65,
                width: 153,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: blueColor,
                ),
                child: const Center(
                  child: Text(
                    'Great',
                    style:  TextStyle(
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
