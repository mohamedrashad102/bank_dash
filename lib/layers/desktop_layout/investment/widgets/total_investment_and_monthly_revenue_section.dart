import 'package:bank_dash/layers/mobile_layout/investments/widgets/monthly_revenue_section.dart';
import 'package:bank_dash/layers/mobile_layout/investments/widgets/total_investment_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TotalInvestmentAndMonthlyRevenueSection extends StatelessWidget {
  const TotalInvestmentAndMonthlyRevenueSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: TotalInvestmentSection(),
        ),
        Gap(30),
        Expanded(child: MonthlyRevenueSection())
      ],
    );
  }
}
