import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../consts/strings.dart';
import '../home/home_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;

  void splashScreenChange() {
    timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      Get.off(() => const HomeView());
    });
  }

  @override
  void initState() {
    super.initState();
    splashScreenChange();
  }

  @override
  void dispose() {
    timer?.cancel(); // cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            // App logo
            Center(
              child: Text(
                "xrepo.",
                style: TextStyle(
                  fontSize: 60,
                  fontFamily: "Inter ExtraBold",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Spacer(),
            // Welcome text
            Center(
              child: Text(
                welcometext,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "Inter ExtraBold",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Slogan text
            Center(
              child: Text(
                slogan,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black38,
                  fontFamily: "Inter ExtraBold",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 25),

            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
