import 'package:flutter/material.dart';

import '../../../components/colors.dart';
import 'package:intl/intl.dart';

class editComponents extends StatefulWidget {
  const editComponents({Key? key}) : super(key: key);

  @override
  State<editComponents> createState() => _editComponentsState();
}

class _editComponentsState extends State<editComponents> {
  String birth = "Date of Birth";

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final contactNumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final birthDateController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Stack(children: [
          SizedBox(
            child: Container(
              width: double.infinity,
              height: 145,
              decoration: BoxDecoration(
                color: AppColor.darkLightColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(350),
                    bottomRight: Radius.circular(350)),
              ),
            ),
          ),
          SizedBox(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Edit Profile",
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.lightColor,
                ),
              ),
            ),
          ),
          SizedBox(
            child: Container(
              margin: const EdgeInsets.only(top: 50, left: 115),
              height: 150,
              width: 150,
              alignment: Alignment.center,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  //profile image
                  CircleAvatar(
                    child: Center(
                      child: Icon(
                        Icons.person,
                        color: AppColor.lightColor,
                        size: 50,
                      ),
                    ),
                    backgroundColor: AppColor.darkColor,
                  ),
                  Positioned(
                    right: -3,
                    bottom: 0,
                    child: Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: AppColor.lightBrownColor,
                          ),
                          color: AppColor.darkLightColor),
                      child: Icon(
                        Icons.add_photo_alternate_rounded,
                        color: AppColor.lightBrownColor,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
        SizedBox(height: 30),
        textField("First Name", "Fisrt name"),
        textField("Last Name", "Last name"),
        textField("Contact Number", "Contact number"),
        textField("Email", "email"),
        textField("Password", "password"),
        Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Date of Birth",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1980),
                lastDate: DateTime.now(),
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: ColorScheme.light(
                        primary: AppColor.darkLightColor,
                        secondary: AppColor.lightBrownColor,
                        onSecondary: AppColor.lightColor,
                      ),
                      textButtonTheme: TextButtonThemeData(
                        style: TextButton.styleFrom(
                          primary: AppColor.darkLightColor,
                        ),
                      ),
                      textTheme: const TextTheme(
                        headline1: TextStyle(fontFamily: "Montserrat-Regular"),
                        overline: TextStyle(
                          fontFamily: "Montserrat-Regular",
                        ),
                        button: TextStyle(
                          fontFamily: "Montserrat-Regular",
                        ),
                      ),
                    ),
                    child: child!,
                  );
                }).then((value) {
              setState(() {
                birth = DateFormat("MM/dd/yyyy").format(value!);
              });
            });
          },
          child: Container(
            height: kToolbarHeight,
            width: 270,
            margin: EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: Colors.black54,
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 11),
              alignment: Alignment.centerLeft,
              child: Text(
                birth,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        textField("Address", "address"),
        //save button
        Container(
          height: kToolbarHeight,
          width: 270,
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: AppColor.darkLightColor,
          ),
          child: Center(
            child: Text(
              "SAVE",
              style: const TextStyle(
                color: AppColor.lightColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget textField(String title, String hint) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 60),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 12),
        width: 270,
        child: TextFormField(
          cursorColor: Colors.black54,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.black54,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black54,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black54,
              ),
            ),
          ),
        ),
      ),
    ]);
  }

  void showSnackBar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          text,
        ),
      ),
    );
  }
}
