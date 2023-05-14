import 'package:flutter/material.dart';

class ChooseButton extends StatelessWidget {
  final Color btnColor;
  final String btnTitle;
  final Color btnTextColor;
  final VoidCallback ontap;
  const ChooseButton({
    super.key,
    required this.ontap,
    required this.btnColor,
    required this.btnTitle,
    required this.btnTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(btnColor),
        ),
        onPressed: ontap,
        child: Text(
          btnTitle,
          style: TextStyle(color: btnTextColor),
        ),
      ),
    );
  }
}
