import 'package:flutter/material.dart';
import 'package:respons/models/transaction_model.dart';
import 'package:respons/utils/app_styles.dart';

class TranactionItem extends StatelessWidget {
  const TranactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16(context),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionModel.isWithDrawal ? Colors.red : Colors.green,
          ),
        ),
      ),
    );
  }
}
