import 'package:flutter/material.dart';
import 'package:respons/models/all_expenses_item_model.dart';
import 'package:respons/widgets/active_all_enxpenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key,
      required this.allExpensesItemModel,
      required this.isSelected});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
