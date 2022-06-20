import 'dart:js';
import 'package:coffee_app/authentication.dart';
import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/firebase_options.dart';
import 'package:coffee_app/provider/animationLoading.dart';
import 'package:coffee_app/provider/userProvider.dart';
import 'package:coffee_app/screens/main/mainPage.dart';
import 'package:coffee_app/screens/welcome/welcome.dart';
import 'package:coffee_app/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AnimationLoading>(
        create: (_) => AnimationLoading()
      ),
      ChangeNotifierProvider<CurrentUser>(
        create: (_) => CurrentUser()),
      Provider<AuthenticationService>(
        create: (_) => AuthenticationService(FirebaseAuth.instance),
      ),
      StreamProvider(
        create: (context) =>
            context.read<AuthenticationService>().authStateChanges,
        initialData: null,
      )
    ],
    child: MaterialApp(
      theme: ThemeData(
        fontFamily: 'Helvetica',
        textTheme: const TextTheme(
            headline1:
                TextStyle(fontSize: 18.0, color: AppColor.darkLightColor),
            button: TextStyle(
                fontWeight: FontWeight.bold, fontFamily: 'Montserrat')),
      ),
      title: 'CupFé',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthenticationWrapper(),
        '/main': (context) => const MainPage(),
        '/welcome': (context) => const Welcome(),
      },
    ),
  ));
}
