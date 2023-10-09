import 'package:flutter/material.dart';
import 'package:mp_website/home_screen/screen/desktop_home_screen.dart';
import 'package:mp_website/home_screen/screen/mobile_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 600) {
        return const DesktopHomeScreen();
      } else {
        return const MobileHomeScreen();
      }
    });
  }
}
