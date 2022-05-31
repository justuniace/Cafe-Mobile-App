import 'package:flutter/material.dart';
import 'package:coffee_app/components/colors.dart';

class Bottom extends StatelessWidget {
  const Bottom(Padding padding, {Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          transform: Matrix4.translationValues(0, 320, 1),
          decoration: const BoxDecoration(
            color: AppColor.darkLightColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 30,
            ),
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 30,
                letterSpacing: 1,
                color: AppColor.lightBrownColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
