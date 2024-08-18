import 'package:flutter/material.dart';
import 'package:respons/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:respons/widgets/income_section.dart';
import 'package:respons/widgets/my_cards_and_transaction_history_section.dart';

class ResponsiveMobileLayout extends StatelessWidget {
  const ResponsiveMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
