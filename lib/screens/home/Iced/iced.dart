import 'package:flutter/material.dart';
import '../coffeeListTile.dart';

class Iced extends StatefulWidget {
  const Iced({Key? key}) : super(key: key);

  @override
  State<Iced> createState() => _IcedState();
}

class _IcedState extends State<Iced> {
  List<Map> products = [
    {
      "image": "images/home/Iced/iced1.png",
      "name": "Name",
      "price": "\$123",
    },
    {
      "image": "images/home/Iced/iced2.png",
      "name": "Name",
      "price": "\$456",
    },
    {
      "image": "images/home/Iced/iced3.png",
      "name": "Name",
      "price": "\$789",
    },
    {
      "image": "images/home/Iced/iced4.png",
      "name": "Name",
      "price": "\$012",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
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
