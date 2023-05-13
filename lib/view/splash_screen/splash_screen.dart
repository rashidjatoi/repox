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
  var btnC = false;
  Timer? timer;

  @override
  void dispose() {
    timer?.cancel(); // cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            // App logo
            const Center(
              child: Text(
                "xrepo.",
                style: TextStyle(
                  fontSize: 60,
                  fontFamily: "Inter ExtraBold",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const Spacer(),
            // Welcome text
            const Center(
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
            const Center(
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
            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    btnC = true;
                  });

                  timer = Timer.periodic(const Duration(seconds: 3), (timer) {
                    setState(() {
                      btnC = false;
                    });

                    Get.off(() => const HomeView());
                  });
                },
                child: btnC
                    ? const SizedBox(
                        height: 25,
                        width: 25,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                            strokeWidth: 2,
                          ),
                        ),
                      )
                    : const Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            ),

            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
