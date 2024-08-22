import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/AuthScreens/phone.dart';
import 'package:paymentappui/Screens/AuthScreens/register.dart';
import 'package:paymentappui/Screens/OnBoardingSCreens/on_board_one.dart';
import 'package:paymentappui/Color/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                    const SizedBox(width: 100),
                    const Text(
                      'Profile',
                      style: TextStyle(
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                //
                const Padding(
                  padding: EdgeInsets.only(top: 45, bottom: 45),
                  child: Text(
                    'Please set up your profile',
                    style: TextStyle(
                      color: roundColor2,
                    ),
                  ),
                ),
                Container(
                  height: 134,
                  width: 134,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: blueColor,
                  ),
                  child: Center(
                    child: Image.asset('assets/images/upload.png'),
                  ),
                ),
                //
                const SizedBox(height: 45),
                const CustomTextField(
                  text: 'First Name',
                  hintText: 'Ahmad',
                  icon: Icon(Icons.check_circle),
                ),
                const CustomTextField(
                  text: 'Last Name',
                  hintText: 'Ahmad',
                  icon: Icon(Icons.check_circle),
                ),
                //
                const SizedBox(height: 30),
                DefaultButton(
                  text: 'Set',
                  onTapped: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const PhoneNumber(),
                      ),
                      (route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
