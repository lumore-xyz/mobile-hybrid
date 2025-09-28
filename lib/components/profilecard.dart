import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        // 1. Changed the background color to white
        color: Colors.white,

        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            // Kept the shadow for the elevation effect
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "user_name",
                  style: TextStyle(
                      fontSize: 22.0
                  ),
                ),
                SizedBox(width: 8), // Added space between text and icon
                Icon(
                    Icons.verified,
                    color: Colors.grey,
                    size: 20.0
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Icon(
                    Icons.location_on,
                    color: Colors.grey,
                    size: 20.0
                ),
                SizedBox(width: 8), // Added space between icon and text
                Text("0.00km"),
              ],
            )
          ]
      ),
    );
  }
}