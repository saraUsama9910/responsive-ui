import 'package:flutter/material.dart';
import 'package:respons/widgets/custom_background_container.dart';
import 'package:respons/widgets/my_cards_section.dart';
import 'package:respons/widgets/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 10,
          ),
          TransactionHistory(),
          
        ],
      ),
    );
  }
}
