import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/screens/login/login.dart';
import 'package:coffee_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterComponent extends StatefulWidget {
  const RegisterComponent ({ Key? key }) : super(key: key);

  @override
  State<RegisterComponent> createState() => _RegisterComponentState();
}

class _RegisterComponentState extends State<RegisterComponent>  {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordVisible = true;

  @override
  void initState() {
    super.initState();

    emailController.addListener(() => setState(() => {}));
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(),
            hintText: 'Enter your email',
            hintStyle: TextStyle(color: Colors.brown[200], fontSize: 15),
            filled: true,
            fillColor: AppColor.lightColor,
            prefixIcon: Icon(Icons.mail_rounded, color: AppColor.darkLightColor, size: 20,),
            suffixIcon: emailController.text.isEmpty ?
            Container(width: 0) : 
            IconButton(
              icon: Icon(Icons.close, color: AppColor.darkLightColor, size: 20),
              onPressed: () => emailController.clear(),
            ),
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(20)
          ),
          style: TextStyle(
            color: AppColor.darkLightColor,
            fontSize: 15
          ),
          cursorColor: AppColor.darkLightColor,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
        ),

        SizedBox(height: 20),

        TextField(
          controller: passwordController,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(),
            hintText: 'Enter your password',
            hintStyle: TextStyle(color: Colors.brown[200], fontSize: 15),
            filled: true,
            fillColor: AppColor.lightColor,
            prefixIcon: Icon(Icons.lock_rounded, color: AppColor.darkLightColor, size: 20,),
            suffixIcon: IconButton(
              icon: isPasswordVisible ? 
              Icon(Icons.visibility_rounded, color: AppColor.darkLightColor, size: 20,) :
              Icon(Icons.visibility_off_rounded, color: AppColor.darkLightColor, size: 20),
              onPressed: () => setState(() {
                isPasswordVisible = !isPasswordVisible;
              })
            ),
            border: OutlineInputBorder(),
          ),
          style: TextStyle(
            color: AppColor.darkLightColor,
            fontSize: 15
          ),
          cursorColor: AppColor.darkLightColor,
          obscureText: isPasswordVisible,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
        ),

        SizedBox(height: 30),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.all(0),
                  alignment: Alignment.centerLeft,
                  color: AppColor.darkLightColor,
                  onPressed: () {}, 
                  iconSize: 35,
                  icon: Image(
                    image: AssetImage('images/login-register/google.png'),
                    color: AppColor.darkLightColor,
                  ),
                ),
                IconButton(
                  color: AppColor.darkLightColor,
                  onPressed: () {
                    context.read<AuthenticationService>().signInAnonymously();
                  },
                  iconSize: 35,
                  icon: Image(
                    image: AssetImage('images/login-register/anonymous.png'),
                    color: AppColor.darkLightColor,
                  ),
                ),
              ],
            ),
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 19
                )),
                backgroundColor: MaterialStateProperty.all(AppColor.darkLightColor)
              ),
              onPressed: () {
                context.read<AuthenticationService>().signUp(
                  email: emailController.text, 
                  password: passwordController.text
                );
              }, 
              child: Text(
                "Register",
                style: TextStyle(
                  color: AppColor.lightBrownColor
                ),
              )
            )
          ],
        ),

        SizedBox(height: 50),

        Divider(
          height: 20,
          thickness: 1,
          color: Colors.brown[300],
        )
      ],
    );
  }
}
