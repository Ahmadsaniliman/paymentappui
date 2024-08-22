import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/Home/exchange_rate.dart';
import 'package:paymentappui/Color/colors.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 245, 245),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
          ),
          child: Stack(
            children: [
              SingleChildScrollView(
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
                        const SizedBox(width: 80),
                        const Text(
                          'Activity',
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
                      padding: const EdgeInsets.only(top: 30, bottom: 25),
                      child: Container(
                        height: 57,
                        width: 325,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: whiteColor,
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              border: InputBorder.none,
                              hintText: 'Search'),
                        ),
                      ),
                    ),
                    //
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Overall Incommings',
                          style: TextStyle(
                            color: roundColor2,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'See All >',
                          style: TextStyle(
                            color: blueColor,
                          ),
                        ),
                      ],
                    ),

                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Container(
                        height: 275,
                        width: 342,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: whiteColor,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 42,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: blueColor,
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                              'assets/images/calendar.png'),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      const Text(
                                        '09 - 13 May',
                                        style: TextStyle(
                                          color: blackColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Image.asset('assets/images/chart.png')
                                ],
                              ),
                            ),
                            //
                            //
                            Positioned(
                              bottom: 0,
                              child: Image.asset('assets/images/Vector 51.png'),
                            ),
                            //
                            //
                            Positioned(
                              bottom: 90,
                              left: 145,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: blueColor,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 110,
                              left: 90,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                width: 98,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: blueColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '\$50.84',
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/icon.png',
                                      color: whiteColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Overall Outgoings',
                          style: TextStyle(
                            color: roundColor2,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'See All >',
                          style: TextStyle(
                            color: blueColor,
                          ),
                        ),
                      ],
                    ), //
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Container(
                        height: 275,
                        width: 342,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: whiteColor,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 42,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: roundColor1,
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                              'assets/images/calendar.png'),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      const Text(
                                        '09 - 13 May',
                                        style: TextStyle(
                                          color: blackColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushAndRemoveUntil(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ExchangeRateScreen(),
                                          ),
                                          (route) => false,
                                        );
                                      },
                                      child: Image.asset(
                                          'assets/images/chart.png',
                                          color: blueColor))
                                ],
                              ),
                            ),
                            //
                            //
                            Positioned(
                              bottom: 0,
                              child: Image.asset(
                                  'assets/images/Vector 51 (1).png'),
                            ),
                            //
                            //
                            Positioned(
                              bottom: 60,
                              left: 143,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: blueColor,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 80,
                              left: 90,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                width: 98,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: roundColor1,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '\$50.84',
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/icon.png',
                                      color: whiteColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              //
              //
              //
              //
              //
              Positioned(
                bottom: 20,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 70,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: 327,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20),
                      // border: Border.all(),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 44,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/home.png',
                            color: roundColor1,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 44,
                          decoration: const BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/wallet.png',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const ActivityScreen(),
                              ),
                              (route) => false,
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 44,
                            decoration: const BoxDecoration(
                              //   color: blueColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/chart.png',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 44,
                          decoration: const BoxDecoration(
                            //   color: blueColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/user_2.png',
                            //   color: whiteColor,
                          ),
                        ),
                      ],
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
