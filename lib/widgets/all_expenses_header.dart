import 'package:flutter/material.dart';
import 'package:respons/utils/app_styles.dart';
import 'package:respons/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const rangeOptions(),
      ],
    );
  }
}
