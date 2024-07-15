
import 'package:flutter/material.dart';
import 'package:respons/widgets/all_expenses.dart';
import 'package:respons/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 5,
        ),
        QuickInvoice(),
      ],
    );
  }
}