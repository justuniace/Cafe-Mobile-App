import 'package:coffee_app/screens/profile/profile.dart';
import 'package:flutter/material.dart';

import '../../../components/colors.dart';

class aboutUs extends StatefulWidget {
  aboutUs({Key? key}) : super(key: key);

  @override
  State<aboutUs> createState() => _aboutUsState();
}

class _aboutUsState extends State<aboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBrownColor,
      appBar: AppBar(
        backgroundColor: AppColor.darkLightColor,
        elevation: 0,
        title: Text(
          "About Us",
          style: TextStyle(
            color: AppColor.lightBrownColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile()));
          },
          color: AppColor.lightBrownColor,
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: 200,
            child: Image(
              image: AssetImage(
                'images/logo.png',
              ),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              "\t\tCUPFÉ App is an online coffee-centric marketplace conceptualized and developed in Philippines.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                color: AppColor.darkColor,
                height: 2,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Text(
              "\t\tWe are high on cufé with no time to snooze, As we strive to conquer the coffee industry,"
              "country by country and bean by bean, to unite all coffee lovers around the world. Cufé is more than just a beverage or an application,"
              "it is a community we seek to aspire, create ,and develop with a team of multirational "
              "and multicultural coffee entusiasts, fueled by coffee and desired by passion.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                color: AppColor.darkColor,
                height: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
