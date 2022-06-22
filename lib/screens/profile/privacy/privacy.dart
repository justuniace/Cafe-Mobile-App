import 'dart:html';

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
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "We keep your information private, safe, and secure.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Text(
                "\t\tWhen you use our application, you’re trusting us with your information."
                " We understand this is a big responsibility and we work hard to protect your information and put you in control",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Text(
                "OUR PRIVACY POLICY",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "\t\tCupfé App and any affiliate or related party to these companies and the group of "
                "companies. We are committed in protecting and respecting your privacy. This Privacy Policy "
                "sets out how we collect, store, process, transfer, share, and use data that identifies or is "
                "associated with you (personal information) and information regarding our use of cookies and similar technologies."
                "\n\n\t\tWe operate an online market place for ordering coffee which CUPFÉ App makes available "
                "as a service to consumers through our mobile application that is available to download on your device."
                "\n\n\t\tPlease ensure that you have read the Privacy Policy and understood how we collect, store, use and disclose your personal information.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                "WHO IS RESPONSIBLE FOR THE USE OF YOUR PERSONAL INFORMATION?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "\t\tCUPFÉ App is the controller of the personal information we hold about you in connection "
                "with your use of the Cupfé Application. This means we determine and are responsible for how "
                "your personal information is used.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "PERSONAL INFORMATION WE COLLECT FROM YOU WHEN YOU USE THE APPLICATION AND HOW WE USE IT"
                "\n\n\t\tWe collect personal information that you voluntarily submit directly to us when you use the "
                "Cupfé Application. This can include information you provide to us when you set up an account, fill "
                "on the form, and purchase a product. This information may include, your email, phone number, "
                "age, birthday and address that is needed in processing your orders.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "HOW LONG WILL WE STORE YOUR PERSONAL ACCOUNT"
                "\n\n\t\tWe will only retain your personal information for as long as necessary to fulfill the purposes we "
                "collected it for, including for the purposes of out legitimate business interests and satisfying any legal or "
                "reporting requirements.  To determine the appropriate retention period for personal information, we "
                "consider the amount, nature and sensitivity of the personal information, the potential risk of harm from "
                "unauthorized use or disclosure of your personal information, the purposes which we process your "
                "personal information and the applicable legal requirements.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "STORING AND TRANSFERRING YOUR PERSONAL INFORMATION"
                "\n\n\t\tWe implement appropriate technical and organizational measures to protect your personal information "
                "against accidental or unlawful destruction, loss, change or damage. All personal information we collect "
                "will be stored by our cloud hosting provider on secure servers. ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "REFUND POLICY",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColor.darkColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5, left: 20, right: 20),
              child: Text(
                "\t\tCUPFÉ App will provide full and partial refunds to users under following circumstances:"
                "\n\n•	If the order delivered is different or incorrect from the order placed."
                "\n•	If the order is late by more than 60 minutes from the time of order.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                "CONTACT US",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "\t\tPlease contact cupfeapp@gmail.com or +63923456124590 if you have any questions, comments ,and "
                "requests regarding this Privacy Policy.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
