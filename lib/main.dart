import 'package:blinkit_clone/repository/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color(0xfff7CB45)),
    );
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blinkit',

      home: SplashScreen(),
    );
  }
}
