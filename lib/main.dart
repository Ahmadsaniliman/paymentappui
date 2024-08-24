import 'package:flutter/material.dart';
import 'package:paymentappui/Screens/Splash/splash_screen_one.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (BuildContext context, Orientation orientation,
          ScreenType screenType) {
        return MaterialApp(
          title: 'Banking Demo UI',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: const SplashScreenOne(),
        );
      },
    );
  }
}


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}