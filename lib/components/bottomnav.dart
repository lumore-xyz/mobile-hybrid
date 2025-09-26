import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // A container to hold the top border line
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey.shade300, width: 1.5),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // New navigation items
              _buildNavItem(Icons.explore_outlined, 'Explore', 0),
              _buildNavItem(Icons.chat_bubble_outline, 'Chats', 1),
              _buildNavItem(Icons.person_outline, 'Profile', 2),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget for each navigation item
  Widget _buildNavItem(IconData icon, String label, int index) {
    // Check if this item is the currently selected one
    final bool isSelected = currentIndex == index;
    // Define the color based on selection state
    final Color color = isSelected ? Colors.black : Colors.grey.shade600;

    return GestureDetector(
      onTap: () => onTap(index),
      // Use a transparent background for the ripple effect
      behavior: HitTestBehavior.translucent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 26),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(color: color, fontSize: 12),
          )
        ],
      ),
    );
  }
}