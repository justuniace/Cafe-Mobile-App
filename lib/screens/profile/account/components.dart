import 'package:coffee_app/components/colors.dart';
import 'package:flutter/material.dart';

class accountComponents extends StatefulWidget {
  const accountComponents({Key? key}) : super(key: key);

  @override
  State<accountComponents> createState() => _accountComponentsState();
}

class _accountComponentsState extends State<accountComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, top: 12),
      margin: EdgeInsets.only(right: 40),
      child: ListView(
        children: [
          Text(
            "Account",
            style: TextStyle(
              fontSize: 30,
              color: AppColor.darkColor,
            ),
          ),
          SizedBox(height: 30),
          textField("FIRST NAME", "Firstname"),
          Divider(height: 20, thickness: 1, color: Colors.brown[300]),
          textField("LAST NAME", "Lastname"),
          Divider(height: 20, thickness: 1, color: Colors.brown[300]),
          textField("CONTACT NUMBER", "contact number"),
          Divider(height: 20, thickness: 1, color: Colors.brown[300]),
          textField("EMAIL", "email"),
          Divider(height: 20, thickness: 1, color: Colors.brown[300]),
          textField("PASSWORD", "password"),
          Divider(height: 20, thickness: 1, color: Colors.brown[300]),
          textField("BIRTHDAY", "birthdate"),
          Divider(height: 20, thickness: 1, color: Colors.brown[300]),
          textField("ADDRESS", "address"),
          Divider(height: 20, thickness: 1, color: Colors.brown[300]),
        ],
      ),
    );
  }

  Widget textField(String label, String hint) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        width: 20,
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: label,
            labelStyle: TextStyle(
              color: AppColor.darkLightColor,
              fontSize: 15,
            ),
            hintText: hint,
            hintStyle: TextStyle(
              height: 2,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColor.darkColor,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
