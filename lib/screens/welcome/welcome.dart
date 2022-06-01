import 'package:coffee_app/components/boxGradient.dart';
import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/provider/animationLoading.dart';
import 'package:coffee_app/screens/welcome/openingAnimation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coffee_app/components/button.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with TickerProviderStateMixin {
  // DECLARATION OF CONTROLLER AND ANIMATION VARIABLE
  late final AnimationController _controller;
  late final _animation;

  // INITIALIZE VARIABLES ON INITIAL STATE
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    super.initState();
  }

  // DISPOSE THE CONTROLLER
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // BUILD METHOD
  @override
  Widget build(BuildContext context) {
    // GET THE LOADING VARIABLE FROM THE PROVIDER <ANIMATION LOADING>
    final isLoading = Provider.of<AnimationLoading>(context).isLoading;

    // CHECK IF THE STATE OF THE ANIMATION, THEN START THE FADE TRANSITION CONTROLLER
    if (!isLoading) {
      _controller.forward();
    }

    // RETURN STATEMENT
    return Scaffold(
      body: Container(
        decoration: BoxGradient.PrimaryGradient(),
        child: Center(
          child: isLoading
              ? OpeningAnimation()
              : FadeTransition(
                  opacity: _animation,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Wake up to a fresh brew.',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(height: 20),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          style: Button.PrimaryButton(),
                          child: Text('Get started'))
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
