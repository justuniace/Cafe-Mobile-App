
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

  static ButtonStyle ExpressoNav() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColor.lightColor),
      foregroundColor: MaterialStateProperty.all(AppColor.darkLightColor),
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
  
  static ButtonStyle IcedNav() {
    return ButtonStyle(
      //backgroundColor: MaterialStateProperty.all(AppColor.lightColor),
      foregroundColor: MaterialStateProperty.all(AppColor.lightColor),
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