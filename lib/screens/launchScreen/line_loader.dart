import 'package:flutter/material.dart';

class LineLoader extends StatefulWidget {
  final double width;
  final double height;
  final Color trackColor;
  final Color lineColor;
  final Duration duration;

  const LineLoader({
    super.key,
    this.width = 200.0,
    this.height = 4.0,
    this.trackColor = Colors.black12,
    this.lineColor = Colors.blueAccent,
    this.duration = const Duration(seconds: 2),
  });

  @override
  State<LineLoader> createState() => _LineLoaderState();
}

class _LineLoaderState extends State<LineLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat(reverse: true); // <-- This is the only change
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: widget.trackColor,
        borderRadius: BorderRadius.circular(widget.height),
      ),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Stack(
            children: [
              Container(
                width: _controller.value * widget.width,
                height: widget.height,
                color: widget.lineColor,
              ),
            ],
          );
        },
      ),
    );
  }
}