import 'package:flutter/material.dart';
import 'package:respons/widgets/custom_button.dart';
import 'package:respons/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer Name',
                hint: 'Type Customer Name',
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type Customer email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item Name',
                hint: 'Type Customer Name',
              ),
            ),
            Expanded(
              child: TitleTextField(
                title: 'Item Count',
                hint: 'USD',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              backGroundColor: Colors.transparent,
              textColor: Color(0xFF4DB7F2),
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
              backGroundColor: null,
              textColor: Colors.white,
            )),
          ],
        )
      ],
    );
  }
}
