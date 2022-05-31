
import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/provider/animationLoading.dart';
import 'package:coffee_app/screens/cart/cart.dart';
import 'package:coffee_app/screens/favorite/favorite.dart';
import 'package:coffee_app/screens/home/home.dart';
import 'package:coffee_app/screens/profile/profile.dart';
import 'package:coffee_app/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (context) => AnimationLoading(),
    child: MaterialApp(
      theme: ThemeData(
        fontFamily: 'Helvetica',
        
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 18.0,
            color: AppColor.darkLightColor
          ),
        )
      ),
      title: 'CupFé',
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const Welcome(),
        '/': (context) => const Home(),
        '/favorite': (context) => const Favorite(),
        '/cart': (context) => const Cart(),
        '/profile': (context) => const Profile(),
      },
    ),
  )
);
