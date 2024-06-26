import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/title_text.dart';
import '../../../mobile_layout/overview/widgets/balance_history_chart.dart';
import 'desktop_over_view_my_card.dart';
import 'desktop_over_view_weekly_active.dart';
import 'desktop_overview_expense_statistics.dart';
import 'desktop_overview_quick_transfer.dart';
import 'desktop_overview_resent_transaction.dart';

class DesktopOverviewView extends StatelessWidget {
  const DesktopOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: DesktopOverViewMyCard(),
            ),
            Gap(25),
            Expanded(
              child: DesktopOverviewResentTransaction(),
            ),
          ],
        ),
        Gap(20),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: DesktopOverViewWeeklyActive(),
            ),
            Gap(25),
            Expanded(
              child: DesktopOverviewExpenseStatistics(),
            ),
          ],
        ),
        Gap(20),
        Row(
          children: [
            Expanded(
              child: DesktopOverviewQuickTransfer(),
            ),
            Gap(25),
            Expanded(
              flex: 2,
              child: DesktopOverviewBalanceHistory(),
            ),
          ],
        ),
      ],
    );
  }
}

class DesktopOverviewBalanceHistory extends StatelessWidget {
  const DesktopOverviewBalanceHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Balance History'),
        const Gap(12),
        Container(
          height: 215,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(15),
          child: const BalanceHistoryChart(),
        ),
      ],
    );
  }
}
