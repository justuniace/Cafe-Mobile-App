import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../components/colors.dart';

class MyOpeningScreen extends StatefulWidget {
  const MyOpeningScreen({Key? key}) : super(key: key);

  @override
  State<MyOpeningScreen> createState() => _MyOpeningScreenState();
}

class _MyOpeningScreenState extends State<MyOpeningScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.lightColor,
              AppColor.lightBrownColor,
            ],
          )),
          child: Center(
            child: Lottie.asset(
              'assets/coffee_animation.json',
              width: 175,
              repeat: false
            ),
          ),
        ),
      ),
    );
  }
}