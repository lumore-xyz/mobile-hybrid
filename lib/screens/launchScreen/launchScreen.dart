import 'package:flutter/material.dart';
import 'package:lumore/screens/Login/login_screen.dart';
import 'package:lumore/screens/launchScreen/circular_orbit_animation.dart';
import 'package:lumore/screens/launchScreen/container.dart';
import 'package:lumore/screens/launchScreen/line_loader.dart';

class AnimatedSplashScreen extends StatefulWidget {
  const AnimatedSplashScreen({super.key});

  @override
  State<AnimatedSplashScreen> createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const LoginScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BrandedContainer(
              // 1. Set the size for the main yellow container
              size: 150.0,
              color: Colors.yellow,
              // 2. Set the corner radius as requested
              cornerRadius: 20.0,
              imageCornerRadius: 20.0, // <-- Apply a 16px radius to the image
              loader: const RotatingSquareLoader(
                // 3. Make the loader slightly smaller than the container
                size: 120.0,
                color: Colors.white,
                borderWidth: 4.0,
                cornerRadius: 20.0,
              ),
              image: Image.asset(
                'assets/lumore-logo.png', // Ensure this path is correct
                // 4. Make the image smaller than the loader
                width: 70,
              ),
            ),
            // For the first text

            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                "Lumore",
                style: TextStyle(
                  fontSize: 24.0, // Increased font size
                  fontWeight: FontWeight.bold, // Makes the text bold
                ),
              ),
            ),

            // For the second text
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Connecting you with like-minded people",
                style: TextStyle(
                  fontSize: 14.0, // Lowered font size
                ),
              ),
            ),
            const LineLoader(
              width: 150,
              lineColor: Colors.yellow, // Set color to yellow
              trackColor: Color(0xFFEEEEEE),
              duration: Duration(milliseconds: 1000), // Increase speed (1.5 seconds)
            ),
          ],
        ),
      ),
    );
  }
}