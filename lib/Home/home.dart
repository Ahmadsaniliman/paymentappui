import 'package:flutter/material.dart';
import 'package:paymentappui/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/Vector (69).png'),
                        Stack(
                          children: [
                            Image.asset('assets/images/Vector (70).png'),
                            Positioned(
                                right: 0,
                                top: 0,
                                child: Image.asset(
                                    'assets/images/Rectangle 173.png')),
                          ],
                        ),
                      ],
                    ),
                    //
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Current Balance\n',
                              style: TextStyle(
                                color: roundColor2,
                                fontSize: 20,
                              ),
                            ),
                            TextSpan(
                              text: '\$2,85,856.20',
                              style: TextStyle(
                                color: blueColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(
                            2,
                            (index) => Container(
                              margin: const EdgeInsets.only(right: 20),
                              padding: const EdgeInsets.all(15),
                              height: 80,
                              width: 307,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: roundColor2,
                                ),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 30,
                                    width: 42,
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: const BoxDecoration(
                                              color: Color(0xFFE80B26),
                                              shape: BoxShape.circle),
                                        ),
                                        Positioned(
                                          right: 10,
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: const BoxDecoration(
                                                color: Color(0xFFEB996E),
                                                shape: BoxShape.circle),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'VISA',
                                        style: TextStyle(
                                          color: blackColor,
                                        ),
                                      ),
                                      SizedBox(height: 7),
                                      Text(
                                        'Master Card  . 6253',
                                        style: TextStyle(
                                          color: roundColor2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 27),
                                  const Text(
                                    '\$758964.10',
                                    style: TextStyle(
                                      color: blueColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Incoming Transactions',
                            style: TextStyle(
                              color: roundColor2,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Sell All >',
                            style: TextStyle(color: roundColor2, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    //
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(
                            3,
                            (index) => Container(
                              margin: const EdgeInsets.only(right: 20),
                              height: 198,
                              width: 157,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 7, right: 7),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/images/58.png'),
                                        Column(
                                          children: [
                                            Image.asset(
                                                'assets/images/icon.png'),
                                            const SizedBox(height: 6),
                                            const Text('+ \$62.54'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Positioned(
                                    top: 60,
                                    left: 7,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'From',
                                          style: TextStyle(
                                              color: roundColor2, fontSize: 13),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          'Johnny \nBairstow',
                                          style: TextStyle(
                                            color: blackColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Text('23 December 2020'),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Image.asset(
                                        'assets/images/Vector 49.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Outgoing Transactions',
                            style: TextStyle(color: roundColor2, fontSize: 20),
                          ),
                          Text(
                            'See All >',
                            style: TextStyle(
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                    ), //
                    //
                    //
                    //
                    //
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(
                            3,
                            (index) => Container(
                              margin: const EdgeInsets.only(right: 20),
                              height: 198,
                              width: 157,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 7, right: 7),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/images/58.png'),
                                        Column(
                                          children: [
                                            Image.asset(
                                                'assets/images/icon.png'),
                                            const SizedBox(height: 6),
                                            const Text('+ \$62.54'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Positioned(
                                    top: 60,
                                    left: 7,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'From',
                                          style: TextStyle(
                                              color: roundColor2, fontSize: 13),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          'Johnny \nBairstow',
                                          style: TextStyle(
                                            color: blackColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Text('23 December 2020'),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Image.asset(
                                        'assets/images/Vector 49 (1).png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                        border: Border.all(),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                              'assets/images/home.png',
                              color: whiteColor,
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
                              'assets/images/wallet.png',
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
                              'assets/images/chart.png',
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
      ),
    );
  }
}
