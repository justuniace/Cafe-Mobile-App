import 'package:coffee_app/screens/cart/cart.dart';
import 'package:coffee_app/screens/favorite/favorite.dart';
import 'package:coffee_app/screens/home/home.dart';
import 'package:coffee_app/screens/login/login.dart';
import 'package:coffee_app/screens/profile/profile.dart';
import 'package:coffee_app/screens/register/register.dart';
import 'package:coffee_app/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'CupFé',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/welcome': (context) => const Welcome(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/': (context) => const Home(),
        '/favorite': (context) => const Favorite(),
        '/cart': (context) => const Cart(),
        '/profile': (context) => const Profile(),
      },
    ));
