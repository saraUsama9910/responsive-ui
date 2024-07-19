import 'package:flutter/material.dart';
import 'package:respons/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.only(right: 5),
          child: CustomDotIndicator(isActive: false),
        ),
      ),
    );
  }
}
