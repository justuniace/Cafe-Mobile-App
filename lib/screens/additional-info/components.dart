import 'package:coffee_app/screens/main/mainPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:provider/provider.dart';
import '../../components/colors.dart';
import 'package:intl/intl.dart';

class AdditionalComponents extends StatefulWidget {
  AdditionalComponents({Key? key}) : super(key: key);

  @override
  State<AdditionalComponents> createState() => _AdditionalComponentsState();
}

class _AdditionalComponentsState extends State<AdditionalComponents> {
  String birth = "Date of Birth";

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final ageController = TextEditingController();
  final contactNumberController = TextEditingController();
  final birthDateController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final firebaseUser = context.watch<User?>();

    Future createUser() async {
    final docUser = FirebaseFirestore.instance.collection('users');

    final userInfo = {
      'firstName' : firstnameController.text,
      'lastName' : lastnameController.text,
      'age' : ageController.text,
      'contactNumber' : contactNumberController.text,
      'birthDate' : birthDateController.text,
      'address' : addressController.text
    };

    await docUser.doc(firebaseUser?.uid).update(userInfo);
  }

    return Column(
      children: [
        textField("First Name", firstnameController),
        SizedBox(height: 15),
        textField("Last Name", lastnameController),
        SizedBox(height: 15),
        textField("Age", ageController),
        SizedBox(height: 15),
        textField("Contact Number", contactNumberController),
        SizedBox(height: 15),
        Container(
          child: TextField(
              controller: birthDateController,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Birthday",
                  hintStyle: TextStyle(color: Colors.brown[200], fontSize: 15),
                  filled: true,
                  fillColor: AppColor.lightColor,
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(20)),
              style: TextStyle(color: AppColor.darkLightColor, fontSize: 15),
              cursorColor: AppColor.darkLightColor,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
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
                          headline1:
                              TextStyle(fontFamily: "Montserrat-Regular"),
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
                  },
                );
                if (pickedDate != null) {
                  print(pickedDate);
                  String formattedDate =
                      DateFormat("MM/dd/yyyy").format(pickedDate);
                  print(formattedDate);

                  setState(() {
                    birthDateController.text = formattedDate;
                  });
                }
              }),
        ),
        SizedBox(height: 15),
        textField("Address", addressController),
        SizedBox(height: 14),
        Stack(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 30, vertical: 19)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Skip",
                    style: TextStyle(color: AppColor.darkLightColor),
                  )),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 30, vertical: 19)),
                      backgroundColor:
                          MaterialStateProperty.all(AppColor.darkColor)),
                  onPressed: () {
                    createUser();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainPage()
                        )
                      );
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(color: AppColor.lightBrownColor),
                  )),
            ),
          ],
        )
      ],
    );
  }

  Widget textField(String hint, TextEditingController controller) {
    return Column(
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(),
            hintText: hint,
            hintStyle: TextStyle(color: Colors.brown[200], fontSize: 15),
            filled: true,
            fillColor: AppColor.lightColor,
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(20),
          ),
          style: TextStyle(color: AppColor.darkLightColor, fontSize: 15),
          cursorColor: AppColor.darkLightColor,
        ),
      ],
    );
  }
}
