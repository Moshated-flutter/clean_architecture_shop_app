import 'package:clean_architecture_shop_app/features/intro/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NBI Shop',
      home: SplashScreen(),
    );
  }
}
