import 'package:flutter/material.dart';
import 'package:mp_website/home_screen/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mind Power',
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: const HomeScreen(),
    );
  }
}
