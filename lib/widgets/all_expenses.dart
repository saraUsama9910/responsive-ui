import 'package:flutter/material.dart';
import 'package:respons/widgets/all_expenses_header.dart';
import 'package:respons/widgets/all_expenses_items_list_view.dart';
import 'package:respons/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 5,
          ),
          AllExpensesItemsListView()
        ],
      ),
    );
  }
}
