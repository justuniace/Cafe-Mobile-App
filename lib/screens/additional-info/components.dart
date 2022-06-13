import 'package:flutter/material.dart';

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
                } else {
                  print("Date is not selected");
                }
              }),
        ),
        SizedBox(height: 15),
        textField("Address", addressController),
        SizedBox(height: 14),
        Container(
          alignment: Alignment.centerRight,
          child: TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 30, vertical: 19)),
                  backgroundColor:
                      MaterialStateProperty.all(AppColor.darkLightColor)),
              onPressed: () {},
              child: Text(
                "Register",
                style: TextStyle(color: AppColor.lightBrownColor),
              )),
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
