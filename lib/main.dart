import 'package:auto_adjust/auto_adjust.dart';
import 'package:buy_it_now/screens/splash_screen.dart';
import 'package:buy_it_now/utils/theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context, 896, 386);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ButItNowThemeData.appThemeData(context),
      home: const SplashScreen(),
    );
  }
}
