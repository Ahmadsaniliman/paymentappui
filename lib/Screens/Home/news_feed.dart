import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({super.key});

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
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Latest Update',
                      style: TextStyle(
                        color: roundColor2,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 213,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/Group 43 (2).png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dollar goes up 21.3%',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: blackColor,
                              ),
                            ),
                            const SizedBox(height: 7),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/calendar.png',
                                  color: blackColor,
                                ),
                                const SizedBox(width: 15),
                                const Text('20/3/2022 - 7:30 AM')
                              ],
                            )
                          ],
                        ),
                        Image.asset('assets/images/tag_plus.png')
                      ],
                    )
                  ],
                ),
                //
                //
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        'By Rues Dan',
                        style: TextStyle(color: roundColor2, fontSize: 17),
                      ),
                    ),
                    Text(
                        
                      'Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up, Dollar goes up,',
                      style: TextStyle(
                        color: roundColor2,
                        height: 1.5,
                      fontSize: 17
                      ),
                    ),
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
