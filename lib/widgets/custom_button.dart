//import 'dart:html';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap, required this.text});
  VoidCallback? onTap;
  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 217,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            //color: Color(0xffffaa00),
            color: Colors.lightBlue),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            decorationThickness: 0.5,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
