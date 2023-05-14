import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/splash_screen/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'xrepo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.black,
        appBarTheme: const AppBarTheme(
          elevation: 0.8,
          foregroundColor: Colors.black,
        ),
      ),
      getPages: [
        GetPage(name: "/", page: () => const SplashScreen()),
      ],
      initialRoute: "/",
    );
  }
}
