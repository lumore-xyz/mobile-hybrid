import 'package:flutter/material.dart';
import 'package:lumore/screens/Login/heading.dart';
import 'package:lumore/screens/Login/loginCard.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0E0E0),
      body : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children : [
          Heading(),
          LoginCard(),
        ]
      ),
    );
  }
}