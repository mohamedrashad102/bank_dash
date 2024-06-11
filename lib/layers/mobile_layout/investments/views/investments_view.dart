import 'package:bank_dash/layers/mobile_layout/investments/widgets/monthly_revenue_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_scaffold.dart';
import '../widgets/all_investment_items.dart';
import '../widgets/my_investment_section.dart';
import '../widgets/total_investment_section.dart';
import '../widgets/trending_stock_section.dart';

class InvestmentsView extends StatelessWidget {
  const InvestmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileCustomScaffold(
      title: 'Investments',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              AllInvestmentItems(),
              Gap(22),
              TotalInvestmentSection(),
              Gap(22),
              MonthlyRevenueSection(),
              Gap(22),
              MyInvestmentSection(),
              Gap(22),
              TrendingStockSection()
            ],
          ),
        ),
      ),
    );
  }
}
