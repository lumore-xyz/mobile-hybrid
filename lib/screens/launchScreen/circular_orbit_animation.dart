import 'package:flutter/material.dart';

class RotatingSquareLoader extends StatefulWidget {
  final double size;
  final Color color;
  final double borderWidth;
  final double cornerRadius; // New property
  final Duration duration;

  const RotatingSquareLoader({
    super.key,
    this.size = 15.0,
    this.color = Colors.white,
    this.borderWidth = 4.0,
    this.cornerRadius = 20.0, // Default corner radius
    this.duration = const Duration(seconds: 1),
  });

  @override
  State<RotatingSquareLoader> createState() => _RotatingSquareLoaderState();
}

class _RotatingSquareLoaderState extends State<RotatingSquareLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat();

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          // Add the borderRadius here
          borderRadius: BorderRadius.circular(widget.cornerRadius),
          border: Border.all(
            color: widget.color,
            width: widget.borderWidth,
          ),
        ),
      ),
    );
  }
}