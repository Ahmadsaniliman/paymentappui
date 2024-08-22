import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';

class Statistic extends StatelessWidget {
  const Statistic({super.key});

  @override
  Widget build(BuildContext context) {
    final price = [
      '\$5000',
      '\$4000',
      '\$3000',
      '\$2000',
      '\$1000',
    ];
    final text = [
      '26',
      '27',
      '28',
      '29',
      '30',
      '31',
    ];
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
                    'Statistics',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 30),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/calendar.png',
                      color: blackColor,
                      height: 30,
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      '01 Mar 2021- 31 Mar 2021',
                      style: TextStyle(
                        fontSize: 17,
                        color: blackColor,
                      ),
                    )
                  ],
                ),
              ), //
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(top: 50, left: 15, right: 15),
                      height: 150,
                      width: 157,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset('assets/images/icon.png'),
                            const SizedBox(height: 7),
                            const Text(
                              'Income',
                              style: TextStyle(
                                color: roundColor1,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              '\$5,000',
                              style: TextStyle(
                                color: roundColor1,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(top: 50, left: 15, right: 15),
                      height: 150,
                      width: 157,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/iconnn.png',
                              color: blueColor,
                            ),
                            const SizedBox(height: 7),
                            const Text(
                              'Expenses',
                              style: TextStyle(
                                color: blueColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              '\$10,000',
                              style: TextStyle(
                                color: blueColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Container(
                  padding: const EdgeInsets.only(top: 10, right: 9),
                  height: 290,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Expenses Trends',
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/Statistic.png'),
                          Column(
                            children: [
                              ...List.generate(
                                price.length,
                                (index) => Text(
                                  style: const TextStyle(height: 3),
                                  price[index],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.only(right: 50, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(
                              text.length,
                              (index) => Text(
                                text[index],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                'Highest Expense',
                style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 15,right: 15),
                height: 76,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: whiteColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/10.png'),
                        const SizedBox(width: 20),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Transfer to Monica',
                                style: TextStyle(
                                    color: blackColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                '15th March, 2021',
                                style: TextStyle(
                                  color: blackColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                     Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: Column(
                        children: [
                          Image.asset('assets/images/iconnn.png'),
                          const SizedBox(height: 10),
                          const Text(
                            '- \$96.84',
                            style: TextStyle(
                              color: blueColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )
                        ],
                                           ),
                     )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
