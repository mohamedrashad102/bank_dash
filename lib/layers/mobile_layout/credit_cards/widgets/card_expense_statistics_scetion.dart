import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/mobile_layout/credit_cards/widgets/card_expense_statistics_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardExpenseStatisticsScetion extends StatelessWidget {
  const CardExpenseStatisticsScetion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Card Expense Statistics'),
        Gap(12),
        CardExpenseStatisticsChart(),
      ],
    );
  }
}
