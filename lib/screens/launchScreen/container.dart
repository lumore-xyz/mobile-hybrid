import 'package:flutter/material.dart';

class BrandedContainer extends StatelessWidget {
  /// The image or logo to display on top.
  final Widget image;

  /// The loading indicator or animation to display behind the image.
  final Widget loader;

  /// The size of the square container.
  final double size;

  /// The background color of the container.
  final Color color;

  /// The radius for the circular corners of the main container.
  final double cornerRadius;

  /// The radius for the corners of the image itself.
  final double imageCornerRadius; // New property

  const BrandedContainer({
    super.key,
    required this.image,
    required this.loader,
    this.size = 150.0,
    this.color = Colors.yellow,
    this.cornerRadius = 24.0,
    this.imageCornerRadius = 0.0, // Default to 0 (square corners)
  });

  @override
  Widget build(BuildContext context) {
    // This outer ClipRRect is for the main yellow container
    return ClipRRect(
      borderRadius: BorderRadius.circular(cornerRadius),
      child: Container(
        width: size,
        height: size,
        color: color,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Loader is at the bottom layer
            loader,

            // Conditionally wrap the image with ClipRRect for rounded corners
            ClipRRect(
              borderRadius: BorderRadius.circular(imageCornerRadius),
              child: image,
            ),
          ],
        ),
      ),
    );
  }
}