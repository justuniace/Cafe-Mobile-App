import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/screens/home/Espresso/expresso.dart';
import 'package:coffee_app/screens/home/Iced/iced.dart';
import 'package:coffee_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/components/button.dart';

class TopNavButton extends StatefulWidget {
  const TopNavButton({Key? key}) : super(key: key);

  @override
  State<TopNavButton> createState() => _TopNavButtonState();
}

class _TopNavButtonState extends State<TopNavButton> {
  int currentIndex = 0;

  final screens = [
    Expresso(),
    Iced(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColor.lightBrownColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: double.infinity,
              width: 150,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: Text('EXPRESSO'),
                  style: Button.IcedNav()),
            ),
            SizedBox(
              height: double.infinity,
              width: 150,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Iced()));
                  },
                  child: Text('ICED'),
                  style: Button.ExpressoNav()),
            ),
          ],
        ));
  }
}
