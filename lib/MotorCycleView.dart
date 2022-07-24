// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class MotorCycleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff030511),
      child: Center(
          child: Text(
        'MotorCycle coming soon...',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
        ),
      )),
    );
  }
}
