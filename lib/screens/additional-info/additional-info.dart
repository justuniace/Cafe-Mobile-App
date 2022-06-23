import 'package:coffee_app/screens/additional-info/components.dart';
import 'package:flutter/material.dart';

import '../../components/boxLogin-register.dart';

import '../../components/colors.dart';

class registerAdditional extends StatefulWidget {
  registerAdditional({Key? key}) : super(key: key);

  @override
  State<registerAdditional> createState() => _registerAdditionalState();
}

class _registerAdditionalState extends State<registerAdditional> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.darkLightColor,
        child: Column(children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  child: Image(
                    image: AssetImage('images/login-register/coffee_beans.png'),
                  ),
                ),
                Container(
                  decoration: Box.RegisterBox(),
                  height: 550,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 35),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PERSONAL INFORMATION',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Helvetica',
                                fontSize: 20,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                color: AppColor.darkLightColor,
                              ),
                            ),
                            Divider(
                              height: 20,
                              thickness: 1,
                              color: Colors.brown[300],
                            ),
                            SizedBox(height: 20),
                            AdditionalComponents(),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
