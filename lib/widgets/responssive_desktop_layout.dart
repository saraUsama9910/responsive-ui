import 'package:flutter/material.dart';
import 'package:respons/widgets/all_expenses.dart';
import 'package:respons/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:respons/widgets/custom_drawer.dart';
import 'package:respons/widgets/quick_invoice.dart';

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
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
      ],
    );
  }
}

