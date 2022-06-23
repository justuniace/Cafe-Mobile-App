import 'package:flutter/material.dart';

import '../../components/boxGradient.dart';
import '../../components/colors.dart';

class Favorite extends StatefulWidget {
  Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.lightColor,
          elevation: 1,
          title: Container(
            margin: EdgeInsets.only(left: 12, top: 12),
            child: Text(
              "Favorites",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: AppColor.darkColor,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxGradient.PrimaryGradient(),
        child: ListView(
          children: [
            Tile(
                'images/home/coffee1.png',
                'Name',
                "Kape kayo dyan, Kape, Kape, Kape, kape, Kape, Kape, oy kape, edi wag",
                '\$123'),
          ],
        ),
      ),
    );
  }

  Widget Tile(String image, String name, String description, String price) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      height: 120,
      decoration: BoxDecoration(
        color: AppColor.lightBrownColor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    child: Image.asset(image),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 121, top: 27),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: AppColor.darkColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 252, top: 20),
                    child: Text(
                      price,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppColor.darkColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 120),
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: Text(
                        description,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColor.darkLightColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right: -12,
            bottom: 90,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
                color: AppColor.darkLightColor,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.horizontal_rule_rounded,
                  color: AppColor.lightBrownColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
