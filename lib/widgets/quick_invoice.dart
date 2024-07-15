import 'package:flutter/material.dart';
import 'package:respons/widgets/custom_background_container.dart';
import 'package:respons/widgets/latest_transaction.dart';
import 'package:respons/widgets/quick_invoice_form.dart';
import 'package:respons/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 12,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
