import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/title_text.dart';
import 'expense_pie_chart.dart';

class ExpenseStatistics extends StatelessWidget {
  const ExpenseStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Expense Statistics'),
        Gap(12),
        SizedBox(
          height: 260,
          child: ExpensePieChart(),
        ),
      ],
    );
  }
}
