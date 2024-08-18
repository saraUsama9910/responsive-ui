import 'package:flutter/material.dart';
import 'package:respons/widgets/custom_background_container.dart';
import 'package:respons/widgets/income_chart.dart';
import 'package:respons/widgets/income_details.dart';
import 'package:respons/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(child: IncomeDetails())
            ],
          )
        ],
      ),
    );
  }
}
