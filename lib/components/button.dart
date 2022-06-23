
import 'package:coffee_app/components/colors.dart';
import 'package:flutter/material.dart';

class Button {
  static ButtonStyle PrimaryButton() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColor.darkLightColor),
      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 25, 50, 25)),
      foregroundColor: MaterialStateProperty.all(AppColor.lightColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        )
      )
    );
  }

  static ButtonStyle ExpressoNav(Color bgColor, Color fgColor) {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(bgColor),
      foregroundColor: MaterialStateProperty.all(fgColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(50),
            right: Radius.circular(0) 
          ),
        )
      )
    );
  }
  
  static ButtonStyle IcedNav(Color bgColor, Color fgColor) {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(bgColor),
      foregroundColor: MaterialStateProperty.all(fgColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(0),
            right: Radius.circular(50) 
          ),
        )
      )
    );
  }
}