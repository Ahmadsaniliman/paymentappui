import 'package:flutter/material.dart';
import 'package:paymentappui/colors.dart';

class SetPin extends StatelessWidget {
  const SetPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                  const SizedBox(width: 40),
                  const Text(
                    'Set Pin Code',
                    style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              //
              const Padding(
                padding: EdgeInsets.only(top: 45, bottom: 15),
                child: Text(
                  textAlign: TextAlign.center,
                  'Please set your own Pin Code',
                  style: TextStyle(
                    color: roundColor2,
                  ),
                ),
              ),
              const Text(
                textAlign: TextAlign.center,
                'Set Pin Code (5-digit)',
                style: TextStyle(
                  color: roundColor2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 30),
                child: SizedBox(
                  height: 25,
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(
                        5,
                        (index) => Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: roundColor2,
                                width: 1,
                              )),
                        ),
                      ),
                    ],
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
