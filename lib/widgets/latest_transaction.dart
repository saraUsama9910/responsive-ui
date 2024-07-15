import 'package:flutter/material.dart';
import 'package:respons/utils/app_styles.dart';
import 'package:respons/widgets/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(
            context,
          ),
        ),
        const SizedBox(height: 5),
        const LatestTransactionListView()
      ],
    );
  }
}
