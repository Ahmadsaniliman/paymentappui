import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/Home/activity.dart';
import 'package:paymentappui/Screens/Home/home.dart';
import 'package:paymentappui/Screens/Home/new_card.dart';
import 'package:paymentappui/Screens/Home/wallet.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';
import 'package:paymentappui/Color/colors.dart';
import 'package:paymentappui/Screens/Profile/profile.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedBar = 1;
    final List<Map<dynamic, dynamic>> cardData = [
      {
        'icon': 'assets/images/icon.png',
        'type': 'USD',
        'price': '72.67',
        'color': blueColor,
      },
      {
        'icon': 'assets/images/icon.png',
        'type': 'EURO',
        'price': '34.46',
        'color': roundColor1,
      },
      {
        'icon': 'assets/images/icon.png',
        'type': 'YEN',
        'price': '95.31',
        'color': roundColor1,
      },
    ];
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
              Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                            (route) => false,
                          );
                        },
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
                        'Card Details',
                        style: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  //
                  //
                  //
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(
                            2,
                            (index) => InkWell(
                              onTap: () {
                                Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (context) => const Wallet(),
                                  ),
                                  (route) => false,
                                );
                              },
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 20),
                                    padding: const EdgeInsets.all(15),
                                    height: 80,
                                    width: 307,
                                    decoration: BoxDecoration(
                                      color: whiteColor,
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
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color(0xFFEB996E),
                                                          shape:
                                                              BoxShape.circle),
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
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                  //
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    height: 70,
                    width: 325,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: const Color(0xFFF7F5F5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(
                          3,
                          (index) => Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 3),
                            height: 46,
                            width: 96,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: cardData[index]['color']!,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    cardData[index]['type']!,
                                    style: const TextStyle(color: whiteColor),
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        cardData[index]['icon']!,
                                        color: whiteColor,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        cardData[index]['price']!,
                                        style:
                                            const TextStyle(color: whiteColor),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: DefaultButton(
                      text: 'Add Card',
                      onTapped: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const AddNewCard(),
                          ),
                          (route) => false,
                        );
                      },
                    ),
                  ),

                  //
                  //
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cash Backs',
                        style: TextStyle(
                          color: roundColor2,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'See All >',
                        style: TextStyle(color: blueColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  //
                  //
                  //
                  //
                  //
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 325,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 57,
                              width: 57,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: roundColor1,
                              ),
                              child: Center(
                                child: Image.asset('assets/images/upload.png'),
                              ),
                            ),
                            const SizedBox(width: 15),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 57,
                              width: 57,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: blueColor,
                              ),
                              child: Center(
                                child: Image.asset(
                                    'assets/images/Vector (71).png'),
                              ),
                            ),
                            const SizedBox(width: 15),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 57,
                              width: 57,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Center(
                                child: Image.asset('assets/images/5.png'),
                              ),
                            ),
                            const SizedBox(width: 15),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                              (route) => false,
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 44,
                            decoration: BoxDecoration(
                              color: selectedBar == 0 ? blueColor : null,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/home.png',
                              color:
                                  selectedBar == 0 ? whiteColor : roundColor1,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const CardScreen(),
                              ),
                              (route) => false,
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 44,
                            decoration: BoxDecoration(
                              color: selectedBar == 1 ? blueColor : null,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/wallet.png',
                              color:
                                  selectedBar == 1 ? whiteColor : roundColor1,
                            ),
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
                            decoration: BoxDecoration(
                              color: selectedBar == 2 ? blueColor : null,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/chart.png',
                              color:
                                  selectedBar == 2 ? whiteColor : roundColor1,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const ProfileScreen(),
                              ),
                              (route) => false,
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 44,
                            decoration: BoxDecoration(
                              color: selectedBar == 3 ? blueColor : null,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/user_2.png',
                              color:
                                  selectedBar == 3 ? whiteColor : roundColor1,
                            ),
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
