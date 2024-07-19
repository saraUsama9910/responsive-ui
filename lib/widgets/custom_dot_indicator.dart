import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 8,
      width: isActive ? 32 : 8,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: isActive
            ? const Color(0xFF4DB7F2)
            : const Color(
                0xFFE7E7E7,
              ),
      ),
      duration: const Duration(milliseconds: 300),
    );
  }
}
