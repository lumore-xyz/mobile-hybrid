import 'package:flutter/material.dart';
import 'package:lumore/screens/Login/heading.dart';
import 'package:lumore/screens/register/registercard.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children : [
            Heading(),
            RegisterCard(),
          ]
      ),
    );
  }
}