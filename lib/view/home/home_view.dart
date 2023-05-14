import 'package:flutter/material.dart';

import '../../consts/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: const TextSpan(
            text: "Hello,",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: appThemeColor,
            ),
            children: [
              TextSpan(text: "Rashid Ali"),
            ],
          ))
        ],
      ),
    );
  }
}
