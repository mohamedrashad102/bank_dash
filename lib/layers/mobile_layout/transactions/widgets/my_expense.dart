import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'expense_items.dart';

class MyExpense extends StatelessWidget {
  const MyExpense({super.key});

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
