import 'dart:html';

import 'package:coffee_app/components/colors.dart';
import 'package:flutter/material.dart';

class profileComponents extends StatefulWidget {
  const profileComponents({Key? key}) : super(key: key);

  @override
  State<profileComponents> createState() => _profileComponentsState();
}

class _profileComponentsState extends State<profileComponents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          width: 150,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircleAvatar(
                //just for the mean time
                backgroundColor: AppColor.darkLightColor,
              ),
              Positioned(
                right: -3,
                bottom: 0,
                child: SizedBox(
                  height: 46,
                  width: 46,
                  child: Icon(
                    Icons.add_photo_alternate_rounded,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                "Username",
                style: TextStyle(
                  color: AppColor.darkColor,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 45),
        SizedBox(
          child: Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                fixedSize: Size.fromWidth(330),
                padding: EdgeInsets.all(30),
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
                        fontFamily: 'Helvetica.ttf',
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
                padding: EdgeInsets.all(30),
                backgroundColor: AppColor.lightBrownColor,
                elevation: 2,
              ),
              child: Row(children: [
                SizedBox(
                  width: 40,
                  child: Icon(
                    Icons.settings,
                    color: AppColor.darkColor,
                  ),
                ),
                Text(
                  "Settings",
                  style: DefaultTextStyle.of(context).style.apply(
                        fontSizeFactor: 1.5,
                        fontFamily: 'Helvetica.ttf',
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
                padding: EdgeInsets.all(30),
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
                  "Help",
                  style: DefaultTextStyle.of(context).style.apply(
                        fontSizeFactor: 1.5,
                        fontFamily: 'Helvetica.ttf',
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
                padding: EdgeInsets.all(30),
                backgroundColor: AppColor.darkColor,
                elevation: 2,
              ),
              child: Text(
                "Logout",
                style: TextStyle(
                  color: AppColor.lightColor,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
