// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:calculator/constant/theme.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double height;
  final double width;
  final Color cardColor;
  final String title;
  final onPreased;

  MyButton({
    this.height = 100,
    this.width = 100,
    required this.cardColor,
    required this.title,
    required this.onPreased,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: onPreased,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: cardColor,
          ),
          child: Center(
            child: Text(
              title,
              style: styleTheme.btnText,
            ),
          ),
        ),
      ),
    );
  }
}
