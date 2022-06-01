import 'package:flutter/material.dart';
import 'colors.dart';

class Name {
  static Container LoginText() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'LOGIN',
            textAlign: TextAlign.left,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: 'Helvetica.ttf',
              fontSize: 30,
              letterSpacing: 1,
              color: AppColor.lightBrownColor,
            ),
          ),
          const Divider(
            height: 20,
            thickness: 3,
            color: AppColor.darkLightColor,
          ),
        ],
      ),
    );
  }
}
