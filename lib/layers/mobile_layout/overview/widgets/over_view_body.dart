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

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            MyCards(),
            RecentTransaction(),
            WeeklyActivity(),
            ExpenseStatistics(),
            QuickTransfer(),
            BalanceHistory(),
          ],
        ),
      ),
    );
  }
}
