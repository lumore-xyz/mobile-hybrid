import 'package:flutter/material.dart';

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

class CustomText extends StatelessWidget {
  final String text;
  final String textColor;
  final double size;
  final bool isBold;

  const CustomText({
    super.key,
    required this.text,
    required this.textColor,
    required this.size,
    required this.isBold
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: _colorFromHex(textColor),
        fontSize: size,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      )
    );
  }
}