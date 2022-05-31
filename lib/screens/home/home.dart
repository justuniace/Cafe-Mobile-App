import 'package:coffee_app/components/boxGradient.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  child: Image(
                    image: AssetImage('images/home/heroImage.png'),
                  ),
                ),
                Container(
                  decoration: BoxGradient.SecondaryGradient(),
                  height: 600,
                )
              ],
            ),
          ),
        ]
      ),
    );
  }
}