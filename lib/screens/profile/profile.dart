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
        backgroundColor: AppColor.darkLightColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
          color: AppColor.lightBrownColor,
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ProfileComponents(),
    );
  }
}
