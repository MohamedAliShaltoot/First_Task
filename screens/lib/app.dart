import 'package:flutter/material.dart';
import 'package:screens/presentation/Widgets/Screens/profile_screen.dart';

class SkinFirts extends StatelessWidget {
  const SkinFirts({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SkinFirts',
      debugShowCheckedModeBanner: false,
      home:
          //SettingsScreen()
          ProfileScreen(),
    );
  }
}