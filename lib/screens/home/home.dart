import 'package:coffee_app/components/boxGradient.dart';
import 'package:coffee_app/screens/home/components/random_products.dart';
import 'package:coffee_app/screens/home/topNavButton.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              height: 560,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  TopNavButton(),
                  ProductPreview(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
