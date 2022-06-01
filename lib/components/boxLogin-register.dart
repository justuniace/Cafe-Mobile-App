import 'package:coffee_app/components/colors.dart';
import 'package:flutter/cupertino.dart';

class Box {
  static BoxDecoration LoginBox() {
    return BoxDecoration(
      color: AppColor.darkColor,
      borderRadius: BorderRadius.vertical(
          top: Radius.circular(50), bottom: Radius.circular(0)),
    );
  }

  static BoxDecoration RegisterBox() {
    return BoxDecoration(
        color: AppColor.lightBrownColor,
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(50), bottom: Radius.circular(0)));
  }
}
