import 'package:flutter/material.dart';
import '../../../components/colors.dart';

class Top extends StatelessWidget {
  const Top({Key? key, required this.imgPath}) : super(key: key);
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 2,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.lightColor,
              AppColor.lightBrownColor,
            ],
          )),
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Image.asset(
              imgPath,
              alignment: Alignment.topCenter,
              scale: 0.50,
            ),
          ),
        ), //Container
      ],
    ); //Stack
  }
}
