import 'package:bank_dash/layers/mobile_layout/overview/widgets/balance_history.dart';
import 'package:bank_dash/layers/mobile_layout/overview/widgets/expense_statistics.dart';
import 'package:bank_dash/layers/mobile_layout/overview/widgets/my_cards.dart';
import 'package:bank_dash/layers/mobile_layout/overview/widgets/quick_transfer.dart';
import 'package:bank_dash/layers/mobile_layout/overview/widgets/recent_transaction.dart';
import 'package:bank_dash/layers/mobile_layout/overview/widgets/weekly_activity.dart';
import 'package:flutter/material.dart';

class OverViewBody extends StatelessWidget {
  const OverViewBody({
    super.key,
  });

  static List<Widget> sections = [
    const MyCards(),
    const RecentTransaction(),
    const WeeklyActivity(),
    const ExpenseStatistics(),
    const QuickTransfer(),
    const BalanceHistory(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: sections
              .map(
                (section) => Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: section,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
