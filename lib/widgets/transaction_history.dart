import 'package:flutter/material.dart';
import 'package:respons/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20(context),
            ),
            Text(
              'See All',
              style: AppStyles.styleMedium16(context),
            ),
          ],
        ),
      ],
    );
  }
}
