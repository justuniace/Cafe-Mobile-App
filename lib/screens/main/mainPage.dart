import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/provider/userProvider.dart';
import 'package:coffee_app/screens/cart/cart.dart';
import 'package:coffee_app/screens/favorite/favorite.dart';
import 'package:coffee_app/screens/home/home.dart';
import 'package:coffee_app/screens/profile/profile.dart';
import 'package:coffee_app/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  void initState() {
    final currentUser = context.read<User?>()?.uid;
    

    initializeUser() async {
      await FirebaseFirestore.instance.collection('users')
      .doc(currentUser)
      .get()
      .then((doc) {
        context.read<CurrentUser>().setUser(doc.data());
      });
    }

    initializeUser();

    super.initState();
  }

  int currentIndex = 0;
  final screens = [
    Home(),
    Favorite(),
    Cart(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(  
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar:  BottomNavigationBar(
        backgroundColor: AppColor.darkLightColor,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColor.lightBrownColor,
        selectedItemColor: AppColor.lightColor,
        unselectedFontSize: 9,
        selectedFontSize: 12,
        showUnselectedLabels: false,

        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.coffee_rounded,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_rounded,
            ),
            label: 'Favorite'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_rounded,
            ),
            label: 'Cart'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
            ),
            label: 'Profile'
          ),
        ],
      ),
    );
  }
}