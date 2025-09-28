import 'package:flutter/material.dart';
import 'package:lumore/components/button.dart';
import 'package:lumore/components/buttons/iconbutton.dart';
import 'package:lumore/components/input.dart';
import 'package:lumore/components/text.dart';

class RegisterData extends StatelessWidget{
  const RegisterData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Signup",
            textColor: '#000000',
            size: 24,
            isBold: true,
          ),
          SizedBox(height: 10),
          CustomText(
            text: "Get, Set, Go!! Ready to meet new friend",
            textColor: '#000000',
            size: 14,
            isBold: false,
          ),


          SizedBox(height: 35),

          CustomIconButton(text: "Login with Google", iconPath: "assets/icons/google.png", onPressed: () {}),

          SizedBox(height: 10),

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Already have an account? login",
                  textColor: '#000000',
                  size: 18,
                  isBold: false,
                ),
              ]
          ),
        ]
    );
  }
}