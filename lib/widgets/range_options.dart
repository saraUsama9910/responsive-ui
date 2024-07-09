import 'package:flutter/material.dart';
import 'package:respons/utils/app_styles.dart';

class rangeOptions extends StatelessWidget {
  const rangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: Color(
              0xFFF1F1F1,
            ),
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xFF064061),
          )
        ],
      ),
    );
  }
}
