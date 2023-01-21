import 'package:flutter/material.dart';
import 'package:portfolio_flutter/Screens/homeScreen.dart';
import 'package:portfolio_flutter/Screens/projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
