import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/title_text.dart';
import '../../../mobile_layout/overview/widgets/expense_pie_chart.dart';
import 'desktop_over_view_my_card.dart';
import 'desktop_over_view_weekly_active.dart';
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
      ],
    );
  }
}

class DesktopOverviewExpenseStatistics extends StatelessWidget {
  const DesktopOverviewExpenseStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Expense Statistics'),
        const Gap(12),
        Container(
          height: 260,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const ExpensePieChart(),
        ),
      ],
    );
  }
}
