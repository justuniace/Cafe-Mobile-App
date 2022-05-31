
import 'package:coffee_app/provider/animationLoading.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class OpeningAnimation extends StatefulWidget {
  const OpeningAnimation({ Key? key }) : super(key: key);

  @override
  State<OpeningAnimation> createState() => _OpeningAnimationState();
}

class _OpeningAnimationState extends State<OpeningAnimation> with SingleTickerProviderStateMixin{

  // DECLARATION OF CONTROLLER AND ANIMATION VARIABLE
  late final AnimationController _controller;
  late final _animation;
  
  // INITIALIZE VARIABLES ON INITIAL STATE
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
    );

    _animation = Tween(
      begin: 0.5,
      end: 1.0
    ).animate(_controller);

    _controller.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        Provider.of<AnimationLoading>(context, listen: false).changeState();
        _controller.reset();
      }
    });
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

    return FadeTransition(
      opacity: _animation,
      child: Lottie.asset(
        'animations/coffee_animation.json',
        width: 175,
        repeat: false,
        controller: _controller,
        onLoaded: (comp) {
          _controller.duration = comp.duration;
          _controller.forward();
        }
      ),
    );
  }
}