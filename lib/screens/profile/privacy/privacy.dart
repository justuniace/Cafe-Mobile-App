import 'package:flutter/material.dart';

import '../../../components/colors.dart';
import '../profile.dart';

class Privacy extends StatefulWidget {
  Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBrownColor,
      appBar: AppBar(
        backgroundColor: AppColor.darkLightColor,
        elevation: 0,
        title: Text(
          "Privacy Policy",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Text(
                "We keep your information"
                " private,safe, and secure.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 29,
                  color: AppColor.darkColor,
                  height: 1,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Text(
                "\t\tWhen you use our application, you’re trusting us with your information."
                "We understand this is a big responsibility and we work hard to protect your information and put you in control.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 20,
                    color: AppColor.darkColor,
                    height: 1.5,
                    fontWeight: FontWeight.w200),
              ),
            ),
            SizedBox(),
            Container(
              child: Text(
                "OUR APPROACH TO PRIVACY",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
