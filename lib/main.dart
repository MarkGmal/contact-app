import 'package:flutter/material.dart';
import 'Common/Theme/app_theme.dart';
import 'Home Screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: HomeScreen(),
    );
  }
}
