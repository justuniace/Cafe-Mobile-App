import 'package:coffee_app/screens/home/Iced/IcedtopNav.dart';
import 'package:flutter/material.dart';

import '../../../components/boxGradient.dart';
import '../../../components/colors.dart';
import '../../../size_config.dart';

class Iced extends StatefulWidget {
  const Iced({Key? key}) : super(key: key);

  @override
  State<Iced> createState() => _IcedState();
}

class _IcedState extends State<Iced> {
  List<Map> products = [
    {
      "image": "images/home/coffee1.png",
      "name": "Name",
      "price": "\$123",
    },
    {
      "image": "images/home/coffee2.png",
      "name": "Name",
      "price": "\$456",
    },
    {
      "image": "images/home/coffee3.png",
      "name": "Name",
      "price": "\$789",
    },
    {
      "image": "images/home/coffee4.png",
      "name": "Name",
      "price": "\$012",
    }
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
                  TopNavButton(),
                  Row(
                    children: [
                      coffeeListTile(products[0]["image"], products[0]["name"],
                          products[0]["price"]),
                      coffeeListTile(products[1]["image"], products[1]["name"],
                          products[1]["price"])
                    ],
                  ),
                  Row(
                    children: [
                      coffeeListTile(products[2]["image"], products[2]["name"],
                          products[2]["price"]),
                      coffeeListTile(products[3]["image"], products[3]["name"],
                          products[3]["price"])
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget coffeeListTile(String image, String name, String price) {
    return Container(
      margin: EdgeInsets.only(top: 32, left: 10),
      height: 160,
      width: 160,
      decoration: BoxDecoration(
        color: AppColor.lightBrownColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(image),
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 30),
                child: IconButton(
                  icon: Icon(Icons.favorite_outline_rounded),
                  color: AppColor.darkColor,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: AppColor.darkColor,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: AppColor.darkColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
