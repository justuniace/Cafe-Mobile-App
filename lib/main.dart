
import 'package:coffee_app/screens/cart/cart.dart';
import 'package:coffee_app/screens/favorite/favorite.dart';
import 'package:coffee_app/screens/home/home.dart';
import 'package:coffee_app/screens/profile/profile.dart';
import 'package:coffee_app/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'CupFé',
  debugShowCheckedModeBanner: false,
  initialRoute: 'welcome',
  routes: {
    '/welcome': (context) => const Welcome(),
    '/': (context) => const Home(),
    '/favorite': (context) => const Favorite(),
    '/cart': (context) => const Cart(),
    '/profile': (context) => const Profile(),
  },
));
