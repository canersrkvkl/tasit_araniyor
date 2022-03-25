import 'package:flutter/material.dart';
import 'package:tasit_araniyor/screens/account/onboardingScreen.dart';
import 'package:tasit_araniyor/screens/account/splashScreen.dart';
import 'package:tasit_araniyor/screens/app/emptyOrNot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taşıt Aranıyor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
