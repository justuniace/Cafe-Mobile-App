import 'package:coffee_app/screens/profile/edit-profile/components.dart';
import 'package:coffee_app/screens/profile/profile.dart';
import 'package:flutter/material.dart';

import '../../../components/colors.dart';

class editProfile extends StatefulWidget {
  const editProfile({Key? key}) : super(key: key);

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBrownColor,
      appBar: AppBar(
        backgroundColor: AppColor.darkLightColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Profile()));
          },
          color: AppColor.lightBrownColor,
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: editComponents(),
    );
  }
}
