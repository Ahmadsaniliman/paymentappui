import 'package:flutter/material.dart';
import 'package:paymentappui/colors.dart';

class ExchangeRateScreen extends StatelessWidget {
  const ExchangeRateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final time = [
      '14:00',
      '15:00',
      '16:00',
      '17:00',
      '18:00',
      '19:00',
    ];
    final days = [
      '1H',
      '1D',
      '1W',
      '1M',
      '6M',
      '1Y',
    ];
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
          ),
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
                    'Exchange Rates',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'USD to PKR',
                      style: TextStyle(color: blackColor),
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      '\$1 = Rs. 189.12',
                      style: TextStyle(color: roundColor2),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '\$35201.63',
                      style: TextStyle(
                          color: blueColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/calendar.png',
                          color: roundColor1,
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          '09 - 13 May',
                          style: TextStyle(
                            color: blackColor,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              //
              //
              Center(
                child: Container(
                  height: 357,
                  width: 344,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 0,
                          child: Image.asset('assets/images/Overlay (1).png')),
                      Positioned(
                        bottom: 210,
                        left: 90,
                        child: SizedBox(
                          height: 59,
                          width: 72,
                          child: Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                height: 39,
                                width: 71,
                                decoration: BoxDecoration(
                                  color: blueColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '25%',
                                      style: TextStyle(color: whiteColor),
                                    ),
                                    Image.asset(
                                      'assets/images/icon.png',
                                      color: whiteColor,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 10,
                                width: 10,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: blueColor),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                      6,
                      (index) => Text(time[index]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(6, (index) {
                      int selected = 1;
                      return Container(
                        height: 20,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: selected == index ? blueColor : null,
                        ),
                        child: Center(
                          child: Text(
                            days[index],
                            style: TextStyle(
                                color: selected == index
                                    ? whiteColor
                                    : roundColor2),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
