// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  Color? btnColor;
  Color textColor;
  String? imagePath;
  final VoidCallback ontap;

  CustomButton(
      {Key? key,
      required this.text,
      this.textColor = Colors.black,
      required this.btnColor,
      this.imagePath,
      required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.grey),
          color: btnColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
