import 'package:flutter/material.dart';
import 'package:lumore/components/button.dart';
import 'package:lumore/components/buttons/iconbutton.dart';
import 'package:lumore/components/input.dart';
import 'package:lumore/components/text.dart';

class Data extends StatelessWidget{
  const Data({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Login",
          textColor: '#000000',
          size: 24,
          isBold: true,
        ),
        SizedBox(height: 10),
        CustomText(
          text: "Welcome back to lumore",
          textColor: '#000000',
          size: 14,
          isBold: false,
        ),
        SizedBox(height: 17),

        CustomText(
          text: "Email, Phone, Username",
          textColor: '#000000',
          size: 18,
          isBold: true,
        ),
        SizedBox(height: 5),
        CustomInput(
          hintText: "email, phone, or username",
        ),
        SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: "Password",
              textColor: '#000000',
              size: 18,
              isBold: true,
            ),
            CustomText(
              text: "Forgot your password?",
              textColor: '#000000',
              size: 18,
              isBold: false,
            ),
          ],
        ),
        CustomInput(
          hintText: "Password",
          inputType: CustomInputType.password,
        ),

        SizedBox(height: 15),

        CustomButton(
          text: 'Login',
          textColor: Colors.white,
          buttonColor: Colors.purpleAccent,
          onPressed: () {},
          // onPressed: () {
          //   Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(builder: (context) => const YourNewPage()), // The new page
          //         (Route<dynamic> route) => false, // A predicate that removes all routes
          //   );
          // },
        ),

        SizedBox(height: 5),

        CustomIconButton(text: "Login with Google", iconPath: "assets/icons/google.png", onPressed: () {}),

        SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "Don't have an account? Sign up",
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