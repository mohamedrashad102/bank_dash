import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/balance_history.dart';
import '../widgets/expense_statistics.dart';
import '../widgets/my_cards.dart';
import '../widgets/quick_transfer.dart';
import '../widgets/recent_transaction.dart';
import '../widgets/weekly_activity.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Overview'),
      body: SingleChildScrollView(
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
