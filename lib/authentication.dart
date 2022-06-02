import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/screens/login/login.dart';
import 'package:coffee_app/screens/main/mainPage.dart';
import 'package:coffee_app/screens/register/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthenticationWrapper extends StatefulWidget {
  const AuthenticationWrapper({ Key? key }) : super(key: key);

  @override
  State<AuthenticationWrapper> createState() => _AuthenticationWrapperState();
}

class _AuthenticationWrapperState extends State<AuthenticationWrapper> {

  int index = 0;
  final screens = [
    Login(),
    Register()
  ];

  @override
  Widget build(BuildContext context) {

    final firebaseUser = context.watch<User?>();

    print(firebaseUser);

    if(firebaseUser != null){
      return MainPage();
    }

    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: index == 1 ? AppColor.darkLightColor : AppColor.lightBrownColor,
        ),
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(30)),                ),
                onPressed: () { 
                  setState(() { 
                    index = 0;
                  }); 
                }, 
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: index == 1 ? AppColor.lightBrownColor : AppColor.darkLightColor
                  ),
                )
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(30)),
                ),
                onPressed: () { 
                  setState(() { 
                    index = 1;
                  }); 
                }, 
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                    color: index == 1 ? AppColor.lightBrownColor : AppColor.darkLightColor
                  ),
                )
              ),
            )
          ]
        ),
      ),
    );
  }
}