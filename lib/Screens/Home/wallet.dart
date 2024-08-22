import 'package:flutter/material.dart';
import 'package:paymentappui/Color/colors.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> walletData = [
      {
        'icon': 'assets/images/iconn.png',
        'text': 'Electricity',
      },
      {
        'icon': 'assets/images/shopping_cart.png',
        'text': 'E-Commerce',
      },
      {
        'icon': 'assets/images/phone_iphone.png',
        'text': 'Mobile Data',
      },
      {
        'icon': 'assets/images/🔹 Icon Color.png',
        'text': 'Transportation',
      },
      {
        'icon': 'assets/images/wifi.png',
        'text': 'TV & Internet',
      },
      {
        'icon': 'assets/images/Heart (2).png',
        'text': 'Pharmacy',
      },
      {
        'icon': 'assets/images/Coupon-3.png',
        'text': 'Tickets',
      },
      {
        'icon': 'assets/images/hotel.png',
        'text': 'Hotel',
      },
      {
        'icon': 'assets/images/flight.png',
        'text': 'Flight',
      },
      {
        'icon': 'assets/images/local_gas_station.png',
        'text': 'Fuel',
      },
      {
        'icon': 'assets/images/videogame_asset.png',
        'text': 'Pay Console Play',
      },
      {
        'icon': 'assets/images/Noodle-1.png',
        'text': 'Food % Drink',
      },
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
          child: SingleChildScrollView(
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
                      'My Wallet',
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Available Balance',
                        style: TextStyle(
                          color: roundColor2,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        '\$2,85,856.20',
                        style: TextStyle(
                          color: blueColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                //
                Wrap(
                  runSpacing: 20,
                  spacing: 20,
                  children: [
                    ...List.generate(walletData.length, (index) {
                      return Container(
                        height: 112,
                        width: 109,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: backGroundColor,
                              ),
                              child: Center(
                                child: Image.asset(walletData[index]['icon']!),
                              ),
                            ),
                            Text(
                              walletData[index]['text']!,
                              style: const TextStyle(
                                  color: blackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                          ],
                        ),
                      );
                    }),
                  ],
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'My Cards',
                        style: TextStyle(
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, border: Border.all()),
                        child: const Center(
                          child: Text('+'),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  height: 172,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: roundColor1,
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Liman',
                            style: TextStyle(color: whiteColor),
                          ),
                          Text(
                            'A debit card',
                            style: TextStyle(color: whiteColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 7),
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '2423 3581 9503 2414',
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '21/24',
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      //
                      //
                      SizedBox(height: 40),
                      Text(
                        'Your Balance',
                        style: TextStyle(
                          color: whiteColor,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$3,100.30',
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Visa',
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
