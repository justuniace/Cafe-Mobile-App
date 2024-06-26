import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/provider/userProvider.dart';
import 'package:coffee_app/screens/profile/aboutUs/about.dart';
import 'package:coffee_app/screens/profile/account/account.dart';
import 'package:coffee_app/screens/profile/editProfile/edit.dart';
import 'package:coffee_app/screens/profile/helpCenter/help.dart';
import 'package:coffee_app/screens/profile/privacy/privacy.dart';
import 'package:coffee_app/screens/profile/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/auth.dart';

class ProfileComponents extends StatefulWidget {
  const ProfileComponents({Key? key}) : super(key: key);

  @override
  State<ProfileComponents> createState() => _ProfileComponentsState();
}

class _ProfileComponentsState extends State<ProfileComponents> {
  @override
  Widget build(BuildContext context) {
    print('Profile');
    print(context.watch<User?>());
    final username = context.watch<User?>()?.displayName;

    return Column(
      children: [
        Stack(children: [
          SizedBox(
            child: Container(
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                color: AppColor.darkLightColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(2)),
              ),
              child: SizedBox(
                width: 50,
                height: 40,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: CircleAvatar(
                        maxRadius: 30.0,
                        backgroundColor: AppColor.lightColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100, 30, 10, 0),
                      child: SizedBox(
                        child: Text(
                          "Hello!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Montserrat-Medium",
                              fontSize: 20,
                              color: AppColor.lightColor),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(115, 60, 0, 0),
                      child: SizedBox(
                        child: Text(
                          '$username',
                          style: TextStyle(
                            color: AppColor.lightColor,
                            fontFamily: "Helevetica",
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
        SizedBox(height: 30),
        SizedBox(
          child: Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Account()));
              },
              style: TextButton.styleFrom(
                fixedSize: Size.fromWidth(330),
                padding: EdgeInsets.all(29),
                backgroundColor: AppColor.lightBrownColor,
                elevation: 2,
              ),
              child: Row(children: [
                SizedBox(
                  width: 40,
                  child: Icon(
                    Icons.person,
                    color: AppColor.darkColor,
                  ),
                ),
                Text(
                  "Account",
                  style: DefaultTextStyle.of(context).style.apply(
                        fontSizeFactor: 1.5,
                        decorationColor: AppColor.darkColor,
                      ),
                ),
              ]),
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          child: Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                fixedSize: Size.fromWidth(330),
                padding: EdgeInsets.all(29),
                backgroundColor: AppColor.lightBrownColor,
                elevation: 2,
              ),
              child: Row(children: [
                SizedBox(
                  width: 40,
                  child: Icon(
                    Icons.inventory,
                    color: AppColor.darkColor,
                  ),
                ),
                Text(
                  "Purchased History",
                  style: DefaultTextStyle.of(context).style.apply(
                        fontSizeFactor: 1.5,
                        fontFamily: 'Helvetica',
                        decorationColor: AppColor.darkColor,
                      ),
                ),
              ]),
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          child: Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => aboutUs()));
              },
              style: TextButton.styleFrom(
                fixedSize: Size.fromWidth(330),
                padding: EdgeInsets.all(29),
                backgroundColor: AppColor.lightBrownColor,
                elevation: 2,
              ),
              child: Row(children: [
                SizedBox(
                  width: 40,
                  child: Icon(
                    Icons.groups,
                    color: AppColor.darkColor,
                    size: 25,
                  ),
                ),
                Text(
                  "About Us",
                  style: DefaultTextStyle.of(context).style.apply(
                        fontSizeFactor: 1.5,
                        fontFamily: 'Helvetica',
                        decorationColor: AppColor.darkColor,
                      ),
                ),
              ]),
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          child: Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Privacy()));
              },
              style: TextButton.styleFrom(
                fixedSize: Size.fromWidth(330),
                padding: EdgeInsets.all(29),
                backgroundColor: AppColor.lightBrownColor,
                elevation: 2,
              ),
              child: Row(children: [
                SizedBox(
                  width: 40,
                  child: Icon(
                    Icons.gpp_good,
                    color: AppColor.darkColor,
                  ),
                ),
                Text(
                  "Privacy Policy",
                  style: DefaultTextStyle.of(context).style.apply(
                        fontSizeFactor: 1.5,
                        fontFamily: 'Helvetica',
                        decorationColor: AppColor.darkColor,
                      ),
                ),
              ]),
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          child: Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => helpCenter()));
              },
              style: TextButton.styleFrom(
                fixedSize: Size.fromWidth(330),
                padding: EdgeInsets.all(29),
                backgroundColor: AppColor.lightBrownColor,
                elevation: 2,
              ),
              child: Row(children: [
                SizedBox(
                  width: 40,
                  child: Icon(
                    Icons.help,
                    color: AppColor.darkColor,
                  ),
                ),
                Text(
                  "Help Center",
                  style: DefaultTextStyle.of(context).style.apply(
                        fontSizeFactor: 1.5,
                        fontFamily: 'Helvetica',
                        decorationColor: AppColor.darkColor,
                      ),
                ),
              ]),
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          child: Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
              style: TextButton.styleFrom(
                fixedSize: Size.fromWidth(330),
                padding: EdgeInsets.all(29),
                backgroundColor: AppColor.lightBrownColor,
                elevation: 2,
              ),
              child: Row(children: [
                SizedBox(
                  width: 40,
                  child: Icon(
                    Icons.logout,
                    color: AppColor.darkColor,
                  ),
                ),
                Text(
                  "Sign Out",
                  style: DefaultTextStyle.of(context).style.apply(
                        fontSizeFactor: 1.5,
                        fontFamily: 'Helvetica',
                        decorationColor: AppColor.darkColor,
                      ),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
