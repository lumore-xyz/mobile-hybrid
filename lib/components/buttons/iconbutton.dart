import 'package:flutter/material.dart';
import 'package:lumore/constants/constant.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final String iconPath;
  final VoidCallback onPressed;

  const CustomIconButton({
    super.key,
    required this.text,
    required this.iconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,

        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,

          side: const BorderSide(color: Colors.black, width: 1),

          padding: EdgeInsets.symmetric(
              vertical: context.screenHeight * 0.016
          ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              height: 21.0,
            ),
            const SizedBox(width: 12.0,),
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}