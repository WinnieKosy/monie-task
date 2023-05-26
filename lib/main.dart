import 'package:flutter/material.dart';
import 'package:ui/view/bottom_nav.dart';

import 'contant/theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Initialize the SizeConfig
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moniepoint',
      theme: theme(),
      home: const HomeNavScreen(),
      //routes: routes,
    );
  }
}
