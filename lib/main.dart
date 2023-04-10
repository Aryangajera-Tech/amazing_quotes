import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amazing_quotes/screen/categoryscreen/category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SpleshScreen(),
    );
  }
}

class SpleshScreen extends StatelessWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Amazing',
            style: TextStyle(
                fontSize: 70, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          Text(
            'Quotes',
            style: TextStyle(
                fontSize: 70, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      nextScreen: Category_screen(),
      splashIconSize: 500,
      duration: 2000,
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
