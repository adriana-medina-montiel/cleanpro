


import 'package:cleanpro/screens/home_screen.dart';
import 'package:cleanpro/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: Apptheme.darkTheme,
    );
  }
}