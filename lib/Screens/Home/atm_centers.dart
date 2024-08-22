import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';

class AtmCenters extends StatelessWidget {
  const AtmCenters({super.key});

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
                    'ATM Centers',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Container(
                  height: 293,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: whiteColor,
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/Maps.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 40,
                        right: 100,
                        child: Column(
                          children: [
                            Image.asset('assets/images/Rectangle 216.png'),
                            Image.asset('assets/images/location_on.png'),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 80,
                        left: 140,
                        child: Column(
                          children: [
                            Image.asset('assets/images/Rectangle 216 (2).png'),
                            Image.asset('assets/images/location_on.png'),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 140,
                        right: 80,
                        child: Column(
                          children: [
                            Image.asset('assets/images/Rectangle 216 (1).png'),
                            Image.asset('assets/images/location_on.png'),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 200,
                        right: 140,
                        child: Column(
                          children: [
                            Image.asset('assets/images/Rectangle 216 (3).png'),
                            Image.asset('assets/images/location_on.png'),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        right: 120,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: blueColor.withOpacity(0.4),
                          ),
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: blueColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  ...List.generate(
                    4,
                    (index) {
                      final List<Map<String, String>> data = [
                        {
                          'image': 'assets/images/image 7 (1).png',
                          'text1': 'DBS Bank',
                          'subText': '72, Gotham Road, New York.',
                          'text2': '1.3 KM',
                        },
                        {
                          'image': 'assets/images/image 8 (4).png',
                          'text1': 'NIB Bank',
                          'subText': '72, Gotham Road, New York.',
                          'text2': '2.2 KM',
                        },
                        {
                          'image': 'assets/images/image 10 (7).png',
                          'text1': 'FSB Bank',
                          'subText': '72, Gotham Road, New York.',
                          'text2': '1.3 KM',
                        },
                        {
                          'image': 'assets/images/image 9 (3).png',
                          'text1': 'Citi Bank',
                          'subText': '72, Gotham Road, New York.',
                          'text2': '3.4 KM',
                        },
                      ];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 76,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: whiteColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: backGroundColor,
                                  ),
                                  child: Center(
                                    child: Image.asset(data[index]['image']!),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                 Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data[index]['text1']!,
                                        style: const TextStyle(
                                            color: blackColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        data[index]['subText']!,
                                        style: const TextStyle(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                             Text(
                             data[index]['text2']!,
                              style: const TextStyle(color: blackColor),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
