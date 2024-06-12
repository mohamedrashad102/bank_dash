import 'package:bank_dash/core/widgets/title_text.dart';
import 'package:bank_dash/layers/desktop_layout/investment/widgets/desktop_my_investment_items.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DesktopMyInvestmentSection extends StatelessWidget {
  const DesktopMyInvestmentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'My Investment'),
        Gap(12),
        DesktopMyInvestmentItems()
      ],
    );
  }
}
