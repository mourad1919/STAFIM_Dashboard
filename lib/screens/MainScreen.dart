import 'package:flutter/material.dart';
import 'package:flutter_application_dash_v2/screens/Row1.dart';
import 'package:flutter_application_dash_v2/screens/Row2.dart';
import 'package:flutter_application_dash_v2/screens/styles/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: newcolor,
          image: DecorationImage(
            image: AssetImage('assets/33.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Row1(),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Row2(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
