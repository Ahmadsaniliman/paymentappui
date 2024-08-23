import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

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
            bottom: 10,
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
                      'Contact List',
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Favourites',
                        style: TextStyle(color: roundColor2, fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 80,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: 484,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 44,
                              width: 44,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: backGroundColor,
                              ),
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    shape: BoxShape.circle),
                                child: const Center(
                                  child: Text('+'),
                                ),
                              ),
                            ),
                            ...List.generate(
                              5,
                              (index) =>
                                  Image.asset('assets/images/19 (1).png'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'All Contacts',
                      style: TextStyle(color: roundColor2, fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 15),
                      height: 215,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'A',
                            style: TextStyle(
                              color: roundColor2,
                              fontSize: 19,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              color: backGroundColor,
                              height: 1,
                              width: double.infinity,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/19 (1).png'),
                                  const SizedBox(width: 20),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jason Adam',
                                        style: TextStyle(
                                            color: blackColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('AC: 213-4213-1')
                                    ],
                                  )
                                ],
                              ),
                              //
                              const Icon(Icons.check_circle)
                            ],
                          ),
                          //
                          //

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/22 (1).png'),
                                  const SizedBox(width: 20),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Harry Leo',
                                        style: TextStyle(
                                            color: blackColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('AC: 361-4343-5')
                                    ],
                                  )
                                ],
                              ),
                              //
                              const Icon(Icons.check)
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                //
                const SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: 409,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'B',
                            style: TextStyle(color: roundColor2, fontSize: 19),
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: backGroundColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/36.png'),
                                  const SizedBox(width: 20),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mandy Lin',
                                        style: TextStyle(
                                            color: blackColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('AC: 213-4213-1')
                                    ],
                                  )
                                ],
                              ),
                              //
                              const Icon(Icons.check_circle),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/26 (1).png'),
                                  const SizedBox(width: 20),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Maria Sam',
                                        style: TextStyle(
                                            color: blackColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('AC: 361-4343-5')
                                    ],
                                  )
                                ],
                              ),
                              //
                              const Icon(Icons.check),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/25.png'),
                                  const SizedBox(width: 20),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Lucas ',
                                        style: TextStyle(
                                            color: blackColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('AC: 361-4343-5')
                                    ],
                                  )
                                ],
                              ),
                              //
                              const Icon(Icons.check),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/Ellipse 114.png'),
                                  const SizedBox(width: 20),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Maya ',
                                        style: TextStyle(
                                            color: blackColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('AC: 361-4343-5')
                                    ],
                                  )
                                ],
                              ),
                              //
                              const Icon(Icons.check),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/Ellipse 115.png'),
                                  const SizedBox(width: 20),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Peterson ',
                                        style: TextStyle(
                                            color: blackColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('AC: 361-4343-5')
                                    ],
                                  )
                                ],
                              ),
                              //
                              const Icon(Icons.check),
                            ],
                          ),
                        ],
                      ),
                    )
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
