import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/components/input_field.dart';
import 'package:coffee_app/components/textField_container.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/components/boxLogin-register.dart';
import 'package:coffee_app/components/boxTitleBar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
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
                height: 550,
              ),
              Container(
                child: Stack(
                  children: [
                    Name.LoginText(),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          InputField(
                            data: Icons.email,
                            controller: emailController,
                            isObsecre: false,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
