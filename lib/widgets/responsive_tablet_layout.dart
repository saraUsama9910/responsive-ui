import 'package:flutter/material.dart';
import 'package:respons/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:respons/widgets/custom_drawer.dart';

class ResponsiveTabletLayout extends StatelessWidget {
  const ResponsiveTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          height: 32,
        )
      ],
    );
  }
}
