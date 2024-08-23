import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';

class NewsFeedTwo extends StatelessWidget {
  const NewsFeedTwo({super.key});

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
            bottom: 15
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
                    const SizedBox(width: 70),
                    const Text(
                      'News Feed',
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Latest Update',
                        style: TextStyle(
                          color: roundColor2,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 187,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            height: 187,
                            width: 144,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              'assets/images/Rectangle 203.png',
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Dollar\ngoes up\n21.3%',
                                style: TextStyle(
                                  color: blackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/calendar.png',
                                    color: blackColor,
                                  ),
                                  const SizedBox(width: 15),
                                  const Text('20/3/2022 - 7:30 AM'),
                                ],
                              ),
                              const Text(
                                'By Rues Dan',
                                style: TextStyle(
                                  color: blueColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    //
                    //
                    const SizedBox(height: 25),
                    SizedBox(
                      height: 187,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            height: 187,
                            width: 144,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              'assets/images/Rectangle 203 (1).png',
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Turkey\nBycotts\nDollar',
                                style: TextStyle(
                                  color: blackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/calendar.png',
                                    color: blackColor,
                                  ),
                                  const SizedBox(width: 15),
                                  const Text('20/3/2022 - 7:30 AM'),
                                ],
                              ),
                              const Text(
                                'By Henry James',
                                style: TextStyle(
                                  color: blueColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      height: 187,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            height: 187,
                            width: 144,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              'assets/images/Rectangle 203 (2).png',
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'World Bank\nIncrease\nTaxes',
                                style: TextStyle(
                                  color: blackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/calendar.png',
                                    color: blackColor,
                                  ),
                                  const SizedBox(width: 15),
                                  const Text('20/3/2022 - 7:30 AM'),
                                ],
                              ),
                              const Text(
                                'By Daniel Mathew',
                                style: TextStyle(
                                  color: blueColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      height: 187,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            height: 187,
                            width: 144,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              'assets/images/Rectangle 203 (4).png',
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Big\nCompanies\nPromote\nRemote Work',
                                style: TextStyle(
                                  color: blackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/calendar.png',
                                    color: blackColor,
                                  ),
                                  const SizedBox(width: 15),
                                  const Text('20/3/2022 - 7:30 AM'),
                                ],
                              ),
                              const Text(
                                'By Daniel Mathew',
                                style: TextStyle(
                                  color: blueColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    //
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
