import 'package:flutter/material.dart';

import '../../components/boxGradient.dart';
import '../../components/colors.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          titleSpacing: 0,
          leading: Container(
            margin: EdgeInsets.only(top: 5),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: AppColor.darkColor,
            ),
          ),
          backgroundColor: AppColor.lightColor,
          elevation: 1,
          title: Container(
            margin: EdgeInsets.only(top: 12),
            child: Text(
              "Cart",
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
      floatingActionButton: button(),
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

  Widget button() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 16),
      height: 50,
      width: 320,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: AppColor.darkLightColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          "Place Order",
          style: TextStyle(
            fontSize: 18,
            color: AppColor.lightBrownColor,
          ),
        ),
      ),
    );
  }
}
