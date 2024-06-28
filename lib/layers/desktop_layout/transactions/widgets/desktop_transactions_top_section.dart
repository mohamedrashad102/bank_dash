import 'package:bank_dash/core/widgets/custom_desktop_my_card.dart';
import 'package:bank_dash/core/widgets/custom_my_expense.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopTransactionsTopSection extends StatelessWidget {
  const DesktopTransactionsTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDesktopMyCard(),
        ),
        Gap(25),
        Expanded(
          child: CustomMyExpense(),
        ),
      ],
    );
  }
}
