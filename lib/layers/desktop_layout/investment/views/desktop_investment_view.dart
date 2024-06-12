import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/desktop_investment_items.dart';
import '../widgets/desktop_my_investment_and_trending_stock_section.dart';
import '../widgets/total_investment_and_monthly_revenue_section.dart';

class DesktopInvestmentView extends StatelessWidget {
  const DesktopInvestmentView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DesktopInvestmentItems(),
        Gap(22),
        TotalInvestmentAndMonthlyRevenueSection(),
        Gap(22),
        DesktopMyInvestmentAndTrendingStockSection()
      ],
    );
  }
}
