import 'package:flutter/material.dart';

// An enum to define the input type for better code readability and safety
enum CustomInputType { normal, password }

class CustomInput extends StatefulWidget {
  final String hintText;
  final CustomInputType inputType;
  // You would typically pass a controller to get the input's value
  // final TextEditingController controller;

  const CustomInput({
    super.key,
    required this.hintText,
    this.inputType = CustomInputType.normal,
    // required this.controller,
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  // A state variable to track password visibility
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // The decoration applies the custom UI
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        // Use the state variable to obscure text for passwords
        obscureText: widget.inputType == CustomInputType.password && !_isPasswordVisible,
        decoration: InputDecoration(
          // Remove the default border of the TextField
          border: InputBorder.none,
          // Add padding inside the input field
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey.shade500),

          // The suffixIcon is the eye icon for password fields
          suffixIcon: widget.inputType == CustomInputType.password
              ? IconButton(
            icon: Icon(
              // Change icon based on visibility state
              _isPasswordVisible
                  ? Icons.visibility_off
                  : Icons.visibility,
              color: Colors.grey.shade600,
            ),
            onPressed: () {
              // Update the state to toggle visibility
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
          )
              : null, // No icon for normal input type
        ),
      ),
    );
  }
}