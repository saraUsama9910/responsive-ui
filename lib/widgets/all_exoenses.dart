import 'package:flutter/material.dart';
import 'package:respons/models/all_expenses_item_model.dart';
import 'package:respons/utils/app_images.dart';
import 'package:respons/widgets/all_expenses_header.dart';
import 'package:respons/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
            
          ),
          AllExpensesItem(
            allExpensesItemModel: AllExpensesItemModel(
              image: Assets.imagesIncome,
              title: 'Income',
              date: 'Jun 2024',
              price: r'$20.22',
            ),
          ),
        ],
      ),
    );
  }
}
