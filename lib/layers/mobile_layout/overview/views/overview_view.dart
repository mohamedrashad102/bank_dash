import 'package:bank_dash/core/widgets/custom_drawer.dart';
import 'package:bank_dash/layers/mobile_layout/overview/widgets/my_cards.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/balance_history.dart';
import '../widgets/expense_statistics.dart';
import '../widgets/quick_transfer.dart';
import '../widgets/recent_transaction.dart';
import '../widgets/weekly_activity.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Overview'),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              MyCards(),
              Gap(12),
              RecentTransaction(),
              Gap(12),
              WeeklyActivity(),
              Gap(12),
              ExpenseStatistics(),
              QuickTransfer(),
              BalanceHistory(),
            ],
          ),
        ),
      ),
    );
  }
}
