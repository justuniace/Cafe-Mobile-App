import 'package:coffee_app/components/colors.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 400),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      width: 300,
      decoration: BoxDecoration(
        color: AppColor.lightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
