import 'package:flutter/material.dart';
import 'package:respons/widgets/all_expenses.dart';
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
          width: 24,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(
                height: 12,
              ),
              QuickInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}
