import 'package:flutter/material.dart';
import 'package:paymentappui/Home/money_tranfer_bank.dart';
import 'package:paymentappui/Home/wallet.dart';
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
          home: const MoneyTransferBank(),
        );
      },
    );
  }
}
