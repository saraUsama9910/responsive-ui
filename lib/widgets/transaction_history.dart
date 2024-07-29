import 'package:flutter/material.dart';
import 'package:respons/utils/app_styles.dart';
import 'package:respons/widgets/transaction_history_header.dart';
import 'package:respons/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 1,
        ),
        Text(
          '14 April 2022',
          style: AppStyles.styleMedium16(context).copyWith(color: Colors.grey),
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}
