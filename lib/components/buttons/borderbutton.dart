import 'package:flutter/material.dart';

class CustomBorderButton  extends StatelessWidget {

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final IconData? icon;
  final VoidCallback onPressed;
  final double borderWidth;
  final double? iconSize;
  // final double horizohtalPadding;
  // final double verticalPadding;
  final double borderRadius;


  const CustomBorderButton ({
    required this.text,
    required this.onPressed,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.black,
    this.icon,
    this.borderWidth = 0.5,
    this.borderRadius = 10.0,
    this.iconSize = 20.0,
    // this.horizohtalPadding = 20.0,
    // this.verticalPadding = 12.0,

    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Expanded(
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
              backgroundColor: backgroundColor,
              foregroundColor: textColor,
              side: BorderSide(color: borderColor, width: borderWidth),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20.0)
          ).copyWith(
            iconColor: MaterialStateProperty.all(textColor),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text, style: TextStyle(color: textColor),),
              const SizedBox(width: 8.0),
              if (icon != null) ...[
                const SizedBox(width: 8.0),
                Icon(icon, size: iconSize, color: textColor,),
              ]
              // Icon comes second
            ],
          ),
        ),
      ),
    );
  }
}