import 'package:flutter/material.dart';
import 'package:respons/widgets/custom_background_container.dart';
import 'package:respons/widgets/custom_text_field.dart';
import 'package:respons/widgets/latest_transaction.dart';
import 'package:respons/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}
