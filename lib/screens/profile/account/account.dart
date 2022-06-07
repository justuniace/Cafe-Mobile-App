import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/screens/profile/account/components.dart';
import 'package:flutter/material.dart';

import '../profile.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBrownColor,
      appBar: AppBar(
        backgroundColor: AppColor.lightBrownColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Profile()));
          },
          color: AppColor.darkLightColor,
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: accountComponents(),
    );
  }
}
