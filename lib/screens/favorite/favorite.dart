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
      body: Container(
        width: double.infinity,
        decoration: BoxGradient.PrimaryGradient(),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 30),
              child: Text(
                "Favorites",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 45, left: 20, right: 20),
              height: 120,
              decoration: BoxDecoration(
                color: AppColor.lightBrownColor,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
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
                            child: Image(
                              image: AssetImage('images/home/coffee1.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 121, top: 27),
                            child: Text(
                              "Name",
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
                              "123",
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
                                "Kape kayo dyan, Kape, Kape, Kape, kape, Kape, Kape, oy kape, edi wag",
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
                    bottom: 80,
                    child: Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 4,
                          color: AppColor.lightBrownColor,
                        ),
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
            ),
          ],
        ),
      ),
    );
  }
}
