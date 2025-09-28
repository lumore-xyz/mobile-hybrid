import 'package:flutter/material.dart';

class ChatHeader extends StatelessWidget implements PreferredSizeWidget{
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Chats",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28.0
              ),
            ),

            Text(
              "0/1",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
          ]
        ),
      )
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}