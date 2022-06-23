import 'package:coffee_app/components/colors.dart';

import 'package:flutter/material.dart';

import '../coffeeListTile.dart';

class Expresso extends StatefulWidget {
  const Expresso({Key? key}) : super(key: key);

  @override
  State<Expresso> createState() => _ExpressoState();
}

class _ExpressoState extends State<Expresso> {
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
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: coffeeListTile(products[0]["image"], products[0]["name"],
                    products[0]["price"]),
              ),
              SizedBox(width: 15),
              Expanded(
                child: coffeeListTile(products[1]["image"], products[1]["name"],
                    products[1]["price"]),
              )
            ],
          ),

          SizedBox(height: 15),

          Row(
            children: [
              Expanded(
                child: coffeeListTile(products[2]["image"], products[2]["name"],
                    products[2]["price"]),
              ),
              SizedBox(width: 15),
              Expanded(
                child: coffeeListTile(products[3]["image"], products[3]["name"],
                    products[3]["price"]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
