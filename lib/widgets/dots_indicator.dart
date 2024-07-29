import 'package:flutter/material.dart';
import 'package:respons/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        3,
        (index) =>  Padding(
          padding: EdgeInsets.only(right: 5),
          child: CustomDotIndicator(isActive: index==currentPageIndex),
        ),
      ),
    );
  }
}
