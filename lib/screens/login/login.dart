import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/screens/login/components.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/components/boxLogin-register.dart';
import 'package:coffee_app/components/boxTitleBar.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginComponent inputField = LoginComponent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.lightBrownColor,
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
                  decoration: Box.LoginBox(),
                  height: 500,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 35),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Name.LoginText(),
                            SizedBox(height: 50),
                            LoginComponent()
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
