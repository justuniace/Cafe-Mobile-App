import 'package:coffee_app/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/components/button.dart';

class TopNavButton extends StatelessWidget {
  const TopNavButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColor.lightBrownColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: double.infinity,
            width: 150,
            child: TextButton(
              onPressed: () {}, 
              child: Text('EXPRESSO'),
              style: Button.ExpressoNav()
            ),
          ),
          SizedBox(
            height: double.infinity,
            width: 150,
            child: TextButton(
              onPressed: () {}, 
              child: Text('ICED'),
              style: Button.IcedNav()
            ),
          ),
        ],
      ),
    );
  }
}