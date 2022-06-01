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
              fontFamily: 'Helvetica',
              fontSize: 28,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              color: AppColor.lightBrownColor,
            ),
          ),
          Divider(
            height: 20,
            thickness: 1,
            color: AppColor.darkLightColor,
          ),
        ],
      ),
    );
  }

  static Container RegisterText() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'REGISTER',
            textAlign: TextAlign.left,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: 'Helvetica',
              fontSize: 28,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              color: AppColor.darkLightColor,
            ),
          ),
          Divider(
            height: 20,
            thickness: 1,
            color: Colors.brown[300],
          ),
        ],
      ),
    );
  }
}
