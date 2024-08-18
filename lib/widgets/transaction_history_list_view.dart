import 'package:flutter/material.dart';
import 'package:respons/models/transaction_model.dart';
import 'package:respons/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
        title: 'Cah WithDrawal',
        date: '22 April 2022',
        amount: r'$20,129',
        isWithDrawal: true),
    TransactionModel(
        title: 'Landing Page Project',
        date: '22 April 2022',
        amount: r'$2,000',
        isWithDrawal: false),
    TransactionModel(
        title: 'Juni Mobile App Project',
        date: '22 April 2022',
        amount: r'$20,129',
        isWithDrawal: false)
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children:
            items.map((e) => TransactionItem(transactionModel: e)).toList());
    // return ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return TransactionItem(
    //       transactionModel: items[index],
    //     );
    //   },
    // );
  }
}
