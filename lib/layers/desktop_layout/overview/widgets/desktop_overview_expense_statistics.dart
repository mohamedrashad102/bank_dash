import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/overview/widgets/expense_pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopOverviewExpenseStatistics extends StatelessWidget {
  const DesktopOverviewExpenseStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Expense Statistics'),
        const Gap(12),
        Container(
          height: 260,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const ExpensePieChart(),
        ),
      ],
    );
  }
}
