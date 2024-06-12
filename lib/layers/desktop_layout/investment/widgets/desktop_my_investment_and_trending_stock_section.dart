import 'package:bank_dash/layers/desktop_layout/investment/widgets/desktop_my_investment_section.dart';
import 'package:bank_dash/layers/mobile_layout/investments/widgets/trending_stock_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopMyInvestmentAndTrendingStockSection extends StatelessWidget {
  const DesktopMyInvestmentAndTrendingStockSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: DesktopMyInvestmentSection(),
        ),
        Gap(30),
        Expanded(child: TrendingStockSection())
      ],
    );
  }
}
