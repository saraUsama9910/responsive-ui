import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            color: Color(0x0ffafafa),
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
            ),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_back_ios,
          color: Color(0xFF064061),
        )
      ],
    );
  }
}
