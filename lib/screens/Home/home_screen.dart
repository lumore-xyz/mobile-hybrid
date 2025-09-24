import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text(
          'Welcome to the main app!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}