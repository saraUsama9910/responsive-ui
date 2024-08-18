import 'package:flutter/material.dart';
import 'package:respons/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:respons/widgets/custom_drawer.dart';
import 'package:respons/widgets/income_section.dart';
import 'package:respons/widgets/my_cards_and_transaction_history_section.dart';

class AdaptiveDesktopLayout extends StatelessWidget {
  const AdaptiveDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
            child: Column(
          children: [
            SingleChildScrollView(child: MyCardsAndTransactionHistorySection()),
            Expanded(child: IncomeSection())
          ],
        ))
      ],
    );
  }
}
