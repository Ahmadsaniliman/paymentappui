import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';

class History extends StatelessWidget {
  const History({super.key});

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
          child: SingleChildScrollView(
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
                      'History',
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
                        'Date',
                        style: TextStyle(
                          color: roundColor2,
                          fontSize: 15,
                        ),
                      ),
                      //
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset('assets/images/calendar.png',
                              color: blackColor),
                          const SizedBox(width: 20),
                          const Text(
                            'May',
                            style: TextStyle(
                              color: blackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      //
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(7),
                            height: 50,
                            width: 128,
                            decoration: BoxDecoration(
                              color: blueColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Transaction',
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/images/icon.png',
                                      color: whiteColor,
                                    ),
                                    const Text(
                                      '\$200',
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            padding: const EdgeInsets.all(7),
                            height: 50,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: roundColor1,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Tickets',
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/images/icon.png',
                                      color: whiteColor,
                                    ),
                                    const Text(
                                      '\$60',
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //
                //
                SizedBox(
                  height: 306,
                  width: double.infinity,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Today',
                          style: TextStyle(
                            color: roundColor2,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Center(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 80,
                                width: 325,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 57,
                                          width: 57,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(13),
                                            color: roundColor1,
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                                'assets/images/upload.png'),
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 3),
                                            Text(
                                              'Entertainment',
                                              style: TextStyle(
                                                color: blackColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text('4:34 PM'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        const SizedBox(height: 7),
                                        Image.asset(
                                          'assets/images/icon.png',
                                          color: blueColor,
                                        ),
                                        const SizedBox(height: 7),
                                        const Text(
                                          '\$5.84',
                                          style: TextStyle(
                                              color: blueColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //
                              //
                              //
                              const SizedBox(height: 20),
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 80,
                                width: 325,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 57,
                                          width: 57,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(13),
                                            color: blueColor,
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                                'assets/images/Vector (71).png'),
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 3),
                                            Text(
                                              'Food Delivery',
                                              style: TextStyle(
                                                color: blackColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text('6:57 PM'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        const SizedBox(height: 7),
                                        Image.asset(
                                          'assets/images/icon.png',
                                          color: blueColor,
                                        ),
                                        const SizedBox(height: 7),
                                        const Text(
                                          '\$6.32',
                                          style: TextStyle(
                                              color: blueColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //
                              //
                              //
                              //
                              const SizedBox(height: 20),
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 80,
                                width: 325,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 57,
                                          width: 57,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(13),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                                'assets/images/5.png'),
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 3),
                                            Text(
                                              'Sarah',
                                              style: TextStyle(
                                                color: blackColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text('12:23 AM'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        const SizedBox(height: 7),
                                        Image.asset(
                                          'assets/images/icon.png',
                                          color: blueColor,
                                        ),
                                        const SizedBox(height: 7),
                                        const Text(
                                          '\$5.84',
                                          style: TextStyle(
                                              color: blueColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //
                //
                //
                //
                //
                //
                const SizedBox(height: 20),
                SizedBox(
                  height: 306,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Yestarday',
                        style: TextStyle(
                          color: roundColor2,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Center(
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 80,
                              width: 325,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 57,
                                        width: 57,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13),
                                          color: roundColor1,
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                              'assets/images/upload.png'),
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 3),
                                          Text(
                                            'Entertainment',
                                            style: TextStyle(
                                              color: blackColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text('4:34 PM'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 7),
                                      Image.asset(
                                        'assets/images/icon.png',
                                        color: blueColor,
                                      ),
                                      const SizedBox(height: 7),
                                      const Text(
                                        '\$5.84',
                                        style: TextStyle(
                                            color: blueColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            //
                            //
                            //
                            const SizedBox(height: 20),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 80,
                              width: 325,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 57,
                                        width: 57,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13),
                                          color: blueColor,
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                              'assets/images/Vector (71).png'),
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 3),
                                          Text(
                                            'Food Delivery',
                                            style: TextStyle(
                                              color: blackColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text('6:57 PM'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 7),
                                      Image.asset(
                                        'assets/images/icon.png',
                                        color: blueColor,
                                      ),
                                      const SizedBox(height: 7),
                                      const Text(
                                        '\$6.32',
                                        style: TextStyle(
                                            color: blueColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            //
                            //
                            //
                            //
                            const SizedBox(height: 20),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 80,
                              width: 325,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 57,
                                        width: 57,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                              'assets/images/5.png'),
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 3),
                                          Text(
                                            'Sarah',
                                            style: TextStyle(
                                              color: blackColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text('12:23 AM'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 7),
                                      Image.asset(
                                        'assets/images/icon.png',
                                        color: blueColor,
                                      ),
                                      const SizedBox(height: 7),
                                      const Text(
                                        '\$5.84',
                                        style: TextStyle(
                                            color: blueColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
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
      ),
    );
  }
}
