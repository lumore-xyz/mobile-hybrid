import 'package:flutter/material.dart';
import 'package:lumore/constants/constant.dart';
import 'package:lumore/screens/Login/data.dart';

class LoginCard extends StatelessWidget {
  const LoginCard ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0, bottom: 25, left: 20.0, right: 20.0),
      margin: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.05),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Data(),
    );
  }
}