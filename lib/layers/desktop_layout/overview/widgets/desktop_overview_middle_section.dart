import 'package:bank_dash/layers/desktop_layout/overview/widgets/desktop_over_view_weekly_active.dart';
import 'package:bank_dash/layers/desktop_layout/overview/widgets/desktop_overview_expense_statistics.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopOverviewMiddleSection extends StatelessWidget {
  const DesktopOverviewMiddleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
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
    );
  }
}
