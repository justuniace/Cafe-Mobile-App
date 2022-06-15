import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/provider/userProvider.dart';
import 'package:coffee_app/screens/profile/components.dart';
import 'package:flutter/material.dart';

import 'editProfile/edit.dart';

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
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            color: AppColor.lightBrownColor,
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: IconButton(
              icon: Icon(Icons.create),
              color: AppColor.lightBrownColor,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const editProfile()));
              },
            ),
          ),
        ],
      ),
      body: ProfileComponents(),
    );
  }
}
