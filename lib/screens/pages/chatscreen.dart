

import 'package:flutter/material.dart';
import 'package:lumore/components/headers/chats_header.dart';

class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ChatHeader(),
        Expanded(
          child: Column(
            children: [
              Text("No active chats yet")
            ]
          )
        )
      ]
    );
  }
}