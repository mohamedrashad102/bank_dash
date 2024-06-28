import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../layers/mobile_layout/transactions/widgets/expense_items.dart';

class CustomMyExpense extends StatelessWidget {
  const CustomMyExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'My Expense'),
        Gap(12),
        ExpenseItems(),
      ],
    );
  }
}
