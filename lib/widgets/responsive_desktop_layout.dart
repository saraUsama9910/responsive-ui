import 'package:flutter/material.dart';
import 'package:respons/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:respons/widgets/custom_drawer.dart';
import 'package:respons/widgets/income_section.dart';
import 'package:respons/widgets/my_cards_and_transaction_history_section.dart';

class ResponsiveDesktopLayout extends StatelessWidget {
  const ResponsiveDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: SingleChildScrollView(
                          child: AllExpensesAndQuickInvoiceSection(),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                  child: MyCardsAndTransactionHistorySection()),
                              Expanded(child: IncomeSection())
                            ],
                          ))
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
