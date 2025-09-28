import 'package:flutter/material.dart';

class EditProfileButton  extends StatelessWidget {

  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const EditProfileButton ({
    required this.text,
    required this.icon,
    required this.onPressed,
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
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              side: const BorderSide(color: Colors.black, width: 0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20.0)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(text),
              const SizedBox(width: 8.0),
              // Icon comes second
              Icon(icon, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}