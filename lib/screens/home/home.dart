import 'package:coffee_app/components/boxGradient.dart';
import 'package:coffee_app/screens/home/Iced/iced.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../components/button.dart';
import '../../components/colors.dart';
import 'Espresso/expresso.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0;
  final pages = [
    Expresso(),
    Iced()
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 0,
              child: Image(
                image: AssetImage('images/home/heroImage.png'),
              ),
            ),
            Container(
              decoration: BoxGradient.SecondaryGradient(),
              height: 500,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  Container(
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
                                setState(() {
                                  currentIndex = 0;
                                });
                              },
                              child: Text('EXPRESSO'),
                              style: currentIndex == 0 ? Button.ExpressoNav(AppColor.lightColor, AppColor.darkColor) 
                              : Button.ExpressoNav(AppColor.lightBrownColor, AppColor.lightColor)
                          ),
                        ),
                        SizedBox(
                          height: double.infinity,
                          width: 150,
                          child: TextButton(
                              onPressed: () {
                                  setState(() {
                                  currentIndex = 1;
                                });
                              },
                              child: Text('ICED'),
                              style: currentIndex == 1 ? Button.IcedNav(AppColor.lightColor, AppColor.darkColor) 
                              : Button.IcedNav(AppColor.lightBrownColor, AppColor.lightColor)
                          ),
                        ),
                      ],
                    )),
                  pages[currentIndex]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
