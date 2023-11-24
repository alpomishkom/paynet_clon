import 'package:flutter/material.dart';
import 'package:paynet_clone/screens/main/home/my_bottomNavigatorBar.dart';
import 'package:paynet_clone/screens/main/home/splash/splash_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashPages(),
    );
  }
}
