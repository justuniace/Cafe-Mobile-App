import 'package:coffee_app/components/colors.dart';
import 'package:flutter/cupertino.dart';

class BoxGradient {
  static BoxDecoration PrimaryGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
          AppColor.lightColor,
          AppColor.lightBrownColor,
        ]));
  }

  static BoxDecoration SecondaryGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              AppColor.lightColor,
              AppColor.lightBrownColor,
            ]),
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(50), bottom: Radius.circular(0)));
  }
}
