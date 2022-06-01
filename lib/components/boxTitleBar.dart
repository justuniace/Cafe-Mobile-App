import 'package:flutter/material.dart';
import 'colors.dart';

class Name {
  static Container LoginText() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 320,
              left: 39,
            ),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
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
            ),
          ),
          const Divider(
            height: 20,
            thickness: 3,
            indent: 40,
            endIndent: 40,
            color: AppColor.darkLightColor,
          ),
        ],
      ),
    );
  }
}
