import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/colors.dart';

Widget coffeeListTile(String image, String name, String price) {
    return Container(
      height: 160,
      width: 160,
      decoration: BoxDecoration(
        color: AppColor.lightBrownColor,
        borderRadius: BorderRadius.circular(20),
      ),
      // padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          )
        ],
      ),
    );
  }