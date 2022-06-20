import 'package:flutter/material.dart';

class Iced extends StatefulWidget {
  const Iced({Key? key}) : super(key: key);

  @override
  State<Iced> createState() => _IcedState();
}

class _IcedState extends State<Iced> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Iced'),
    );
  }
}
