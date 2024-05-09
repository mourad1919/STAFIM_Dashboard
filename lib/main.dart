import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/Slid2/slid2.dart';
import 'package:flutter_application_dash_v2/Slide1/slid1.dart';
import 'package:flutter_application_dash_v2/screens/MainScreen.dart';

import 'Slide3/Slide3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentScreenIndex = 0;

  @override
  void initState() {
    super.initState();
    startScreenSwitching();
  }

  void startScreenSwitching() {
    Timer.periodic(Duration(seconds: 60), (timer) {
      switchScreen();
    });
  }

  void switchScreen() {
    setState(() {
      if (currentScreenIndex == 0) {
        currentScreenIndex = 1;
      } else if (currentScreenIndex == 1) {
        currentScreenIndex = 2;
      } else if (currentScreenIndex == 2) {
        currentScreenIndex = 3;
      } else {
        currentScreenIndex = 0;
      }
    });
  }

  Widget getCurrentScreen() {
    switch (currentScreenIndex) {
      case 0:
        return MainScreen();
      case 1:
        return Slide1();
      case 2:
        return Slide2();
      case 3:
        return Slide3();  
      default:
        return MainScreen(); // Default to MainScreen if index is out of bounds
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Slide3(),
      ),
    );
  }
}
