
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
}