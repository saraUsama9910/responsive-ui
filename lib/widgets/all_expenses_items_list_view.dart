import 'package:flutter/material.dart';
import 'package:respons/models/all_expenses_item_model.dart';
import 'package:respons/utils/app_images.dart';
import 'package:respons/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});
  static const items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'July 2024',
        price: r'$33.56'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'July 2024',
        price: r'$33.46'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'July 2024',
        price: r'$33.06'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: AllExpensesItem(
                allExpensesItemModel: item,
                isSelected: false,
              ),
            ),
          );
        } else {
          return Expanded(
            child: AllExpensesItem(
              allExpensesItemModel: item,
              isSelected: false,
            ),
          );
        }
      }).toList(),
      // children: items
      //     .map(
      //       (e) => Expanded(
      //         child: AllExpensesItem(
      //           allExpensesItemModel: e,
      //         ),
      //       ),
      //     )
      //     .toList(),
    );
    // SizedBox(
    //   height: 500,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return AllExpensesItem(
    //           allExpensesItemModel: items[index],
    //         );
    //       }),
    // );
  }
}
