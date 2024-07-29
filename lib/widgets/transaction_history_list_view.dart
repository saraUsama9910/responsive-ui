import 'package:flutter/material.dart';
import 'package:respons/models/transaction_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [TransactionModel(title:'Cah WithDrawal', date: '22 April 2022', amount: r'$20,129', isWithDrawal: true),
  TransactionModel(title:'Landing Page Project', date: '22 April 2022', amount: r'$2,000', isWithDrawal: true),
  TransactionModel(title:'Juni Mobile App Project', date: '22 April 2022', amount: r'$20,129', isWithDrawal: true)];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
