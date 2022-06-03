import 'package:flutter/material.dart';
import 'textField_container.dart';

class InputField extends StatelessWidget {
  InputField(
      {Key? key,
      this.controller,
      this.data,
      this.label,
      this.isObsecre,
      this.enabled})
      : super(key: key);
  final TextEditingController? controller;
  final IconData? data;
  final String? label;
  bool? isObsecre = true;
  bool? enabled = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        enabled: enabled,
        controller: controller,
        obscureText: isObsecre!,
        decoration: InputDecoration(
          prefixIcon: Icon(
            data,
          ),
          labelText: label,
          labelStyle: const TextStyle(
            fontFamily: "Helvetica",
          ),
        ),
      ),
    );
  }
}
