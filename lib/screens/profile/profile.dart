import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/screens/profile/components.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBrownColor,
      appBar: AppBar(
        backgroundColor: AppColor.lightBrownColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
          color: AppColor.darkColor,
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: profileComponents(),
    );
  }
}
