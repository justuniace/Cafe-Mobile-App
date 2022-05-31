import 'package:flutter/material.dart';
import 'bottom.dart';
import 'top.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: const [
              Top(
                imgPath: 'images/coffee_beans.png',
              ),
              Bottom(
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                title: 'LOGIN',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
